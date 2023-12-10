module NoUnusedOrDuplicated.SvgIds exposing (rule)

{-|

@docs rule

-}

import Dict exposing (Dict)
import Elm.Syntax.Expression as Expression exposing (Expression)
import Elm.Syntax.Node as Node exposing (Node(..))
import Elm.Syntax.Range exposing (Range)
import Review.Rule as Rule exposing (ModuleKey, Rule)


{-| Reports... REPLACEME

    config =
        [ NoUnusedOrDuplicated.SvgIds.rule
        ]


## Fail

    a =
        "REPLACEME example to replace"


## Success

    a =
        "REPLACEME example to replace"


## When (not) to enable this rule

This rule is useful when REPLACEME.
This rule is not useful when REPLACEME.


## Try it out

You can try this rule out by running the following command:

```bash
elm-review --template miniBill/elm-avataaars/example --rules NoUnusedOrDuplicated.SvgIds
```

-}
rule : Rule
rule =
    Rule.newProjectRuleSchema "NoUnusedOrDuplicated.SvgIds" initialProjectContext
        |> Rule.withModuleVisitor moduleVisitor
        |> Rule.withModuleContextUsingContextCreator
            { fromProjectToModule = fromProjectToModule
            , fromModuleToProject = fromModuleToProject
            , foldProjectContexts = foldProjectContexts
            }
        -- Enable this if modules need to get information from other modules
        -- |> Rule.withContextFromImportedModules
        |> Rule.withFinalProjectEvaluation finalProjectEvaluation
        |> Rule.fromProjectRuleSchema


type alias ProjectContext =
    { usedIds : Dict String ()
    , definedIds : Dict String (List ( ModuleKey, Range ))
    }


type alias ModuleContext =
    { usedIds : Dict String ()
    , definedIds : Dict String (List Range)
    }


moduleVisitor : Rule.ModuleRuleSchema schema ModuleContext -> Rule.ModuleRuleSchema { schema | hasAtLeastOneVisitor : () } ModuleContext
moduleVisitor schema =
    schema
        |> Rule.withExpressionEnterVisitor expressionVisitor


finalProjectEvaluation : ProjectContext -> List (Rule.Error { useErrorForModule : () })
finalProjectEvaluation context =
    let
        unused : Dict String (List ( ModuleKey, Range ))
        unused =
            Dict.diff
                context.definedIds
                context.usedIds
    in
    unused
        |> Dict.toList
        |> List.concatMap
            (\( id, groups ) ->
                let
                    children : List (Rule.Error scope)
                    children =
                        List.map
                            (\( moduleKey, location ) ->
                                Rule.errorForModule moduleKey
                                    { message = "Id \"" ++ id ++ "\" not used."
                                    , details = [ "The id is never used in the project." ]
                                    }
                                    location
                            )
                            groups
                in
                case groups of
                    ( moduleKey, location ) :: _ :: _ ->
                        Rule.errorForModule moduleKey
                            { message = "Id \"" ++ id ++ "\" is defined multiple times."
                            , details = [ "First definition here." ]
                            }
                            location
                            :: children

                    _ ->
                        children
            )


initialProjectContext : ProjectContext
initialProjectContext =
    emptyContext


emptyContext :
    { usedIds : Dict String ()
    , definedIds : Dict String v
    }
emptyContext =
    { usedIds = Dict.empty
    , definedIds = Dict.empty
    }


fromProjectToModule : Rule.ContextCreator ProjectContext ModuleContext
fromProjectToModule =
    Rule.initContextCreator (\_ -> emptyContext)


fromModuleToProject : Rule.ContextCreator ModuleContext ProjectContext
fromModuleToProject =
    Rule.initContextCreator
        (\moduleKey moduleContext ->
            { usedIds = moduleContext.usedIds
            , definedIds =
                Dict.map
                    (\_ locations -> List.map (Tuple.pair moduleKey) locations)
                    moduleContext.definedIds
            }
        )
        |> Rule.withModuleKey


foldProjectContexts : ProjectContext -> ProjectContext -> ProjectContext
foldProjectContexts new previous =
    { usedIds = Dict.union new.usedIds previous.usedIds
    , definedIds =
        Dict.merge
            Dict.insert
            (\key lvalue rvalue -> Dict.insert key (lvalue ++ rvalue))
            Dict.insert
            new.definedIds
            previous.definedIds
            Dict.empty
    }


expressionVisitor : Node Expression -> ModuleContext -> ( List (Rule.Error {}), ModuleContext )
expressionVisitor node context =
    case Node.value node of
        Expression.Application [ Node _ (Expression.FunctionOrValue _ "id"), Node _ (Expression.Literal id) ] ->
            ( []
            , { context
                | definedIds =
                    upsert id (Node.range node) context.definedIds
              }
            )

        Expression.Application [ Node _ (Expression.FunctionOrValue _ name), Node _ (Expression.Literal url) ] ->
            if
                List.member name [ "mask", "filter", "fill" ]
                    && String.startsWith "url(#" url
                    && String.endsWith ")" url
            then
                let
                    id : String
                    id =
                        String.slice 5 -1 url
                in
                ( []
                , { context
                    | usedIds = Dict.insert id () context.usedIds
                  }
                )

            else
                ( [], context )

        _ ->
            ( [], context )


upsert : comparable -> a -> Dict comparable (List a) -> Dict comparable (List a)
upsert id range old =
    Dict.insert id
        (range
            :: Maybe.withDefault [] (Dict.get id old)
        )
        old

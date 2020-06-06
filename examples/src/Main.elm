module Main exposing (main)

import Avataaars exposing (Avataaar)
import Browser
import Clothes
import Element exposing (Element)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Eyebrow
import Eyes
import FacialHair
import Mouth
import Picker exposing (Picker)
import Picker.Clothes
import Picker.Face
import Picker.SkinTone
import Picker.Top
import Top


type alias Model =
    { avataaar : Avataaar
    , selectedTab : String
    }


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view =
            Element.layout
                [ Element.width Element.fill
                , Element.height Element.fill
                , Element.padding 10
                ]
                << view
        , update = update
        }


init : Model
init =
    { avataaar =
        { circleBg = True
        , skinTone = "#00F0B0"
        , clothes = Clothes.BlazerShirt
        , face =
            { mouth = Mouth.Default
            , eyes = Eyes.Default
            , eyebrow = Eyebrow.Default
            }
        , top = Top.TopFacialHair Top.Eyepatch FacialHair.Blank
        }
    , selectedTab = "Background Circle"
    }


type Msg
    = Avataaar Avataaar
    | SelectedTab String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Avataaar avataaar ->
            { model | avataaar = avataaar }

        SelectedTab selectedTab ->
            { model | selectedTab = selectedTab }


view : Model -> Element Msg
view model =
    Element.column
        [ Element.height Element.fill
        , Element.width Element.fill
        ]
    <|
        [ Element.el
            [ Element.centerX
            ]
          <|
            Element.map Avataaar <|
                Element.html <|
                    Avataaars.view
                        { width = round <| 1.7 * 264
                        , height = round <| 1.7 * 280
                        }
                        model.avataaar
        , Element.text ""
        ]
            ++ viewPickers model
            ++ footer


footer : List (Element msg)
footer =
    [ Element.row []
        [ Element.text "Designed by "
        , Element.newTabLink [ Font.color <| Element.rgb 0 0 1, Font.underline ]
            { url = "https://twitter.com/pablostanley"
            , label = Element.text "Pablo Stanley"
            }
        , Element.text " 🎨"
        ]
    , Element.row []
        [ Element.text "SVG by "
        , Element.newTabLink [ Font.color <| Element.rgb 0 0 1, Font.underline ]
            { url = "https://twitter.com/fangpenlin"
            , label = Element.text "Fang-Pen Lin"
            }
        , Element.text " 💻"
        ]
    , Element.row []
        [ Element.text "Elm port by "
        , Element.newTabLink [ Font.color <| Element.rgb 0 0 1, Font.underline ]
            { url = "https://twitter.com/miniBill"
            , label = Element.text "Leonardo Taglialegne"
            }
        , Element.text " \u{1F986}"
        ]
    ]


pickers : Avataaar -> List (Picker Avataaar)
pickers model =
    List.concat
        [ [ (Picker.map <| \circleBg -> { model | circleBg = circleBg }) <| Picker.text { name = "Background Circle", list = [ ( "Yes", True ), ( "No", False ) ] } model.circleBg
          , Picker.map (\skinTone -> { model | skinTone = skinTone }) (Picker.SkinTone.picker model.skinTone)
          ]
        , List.map (Picker.map <| \clothes -> { model | clothes = clothes }) (Picker.Clothes.picker model.clothes)
        , List.map (Picker.map <| \face -> { model | face = face }) (Picker.Face.picker model.face)
        , List.map (Picker.map <| \top -> { model | top = top }) (Picker.Top.picker model.top)
        ]


viewPickers : Model -> List (Element Msg)
viewPickers model =
    let
        raw =
            List.map
                (\{ name, picker } ->
                    { name = name
                    , picker =
                        if name == model.selectedTab then
                            Just <| Element.map Avataaar picker

                        else
                            Nothing
                    }
                )
                (pickers model.avataaar)

        toTabButton { name, picker } =
            let
                attrs =
                    commonAttrs ++ customAttrs

                commonAttrs =
                    [ Element.padding 10
                    , Font.bold
                    , Border.roundEach { topLeft = 10, topRight = 10, bottomLeft = 0, bottomRight = 0 }
                    ]

                customAttrs =
                    if picker == Nothing then
                        [ Border.width 1
                        ]

                    else
                        [ Border.widthEach { left = 1, top = 1, right = 1, bottom = 0 }
                        , Background.gradient { angle = 0, steps = [ Element.rgba 0 0 0 0, Element.rgb 0.7 0.7 1 ] }
                        ]
            in
            Input.button attrs
                { onPress = Just <| SelectedTab name
                , label = Element.text name
                }

        spacer =
            Element.el
                [ Border.widthEach { top = 0, left = 0, right = 0, bottom = 1 }
                , Element.width <| Element.minimum 10 <| Element.fill
                , Element.padding 10
                ]
            <|
                Element.text ""

        lastSpacer =
            Element.el
                [ Border.widthEach { top = 0, left = 0, right = 0, bottom = 1 }
                , Element.width Element.fill
                , Element.padding 10
                ]
            <|
                Element.text ""

        spaced =
            List.map toTabButton raw
                |> List.intersperse spacer
                |> (\l -> spacer :: l ++ [ lastSpacer ])
    in
    [ Element.wrappedRow [ Element.spacingXY 0 10, Element.width Element.fill, Element.height Element.shrink ] spaced
    , Element.el
        [ Element.width Element.fill
        , Element.padding 10
        , Border.widthEach { left = 1, right = 1, bottom = 1, top = 0 }
        , Element.scrollbarY
        ]
      <|
        Maybe.withDefault Element.none <|
            List.head <|
                List.filterMap .picker raw
    ]

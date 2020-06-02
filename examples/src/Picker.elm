module Picker exposing (Picker, color, map, text)

import Element exposing (Color, Element)
import Element.Background as Background
import Element.Border as Border
import Element.Events as Element
import Element.Font as Font
import Element.Input as Input
import Html
import Html.Attributes
import Html.Events


type alias PickerConfig a =
    { name : String
    , list : List ( String, a )
    }


type alias Picker a =
    { name : String
    , picker : Element a
    }


phi : Float
phi =
    (1 + sqrt 5) / 2


text : PickerConfig a -> a -> Picker a
text { name, list } selected =
    let
        option ( k, v ) =
            Input.button
                [ Element.alignTop
                , Element.width <| Element.px 180
                , Element.height <| Element.px <| round <| 180 / phi
                , Element.padding 10
                , Border.width <|
                    if selected == v then
                        4

                    else
                        1
                , Border.color <|
                    if selected == v then
                        Element.rgb 0.3 0.3 1

                    else
                        Element.rgb 0 0 0
                , Background.color <|
                    if selected == v then
                        Element.rgb 0.7 0.7 1

                    else
                        Element.rgba 0 0 0 0
                ]
            <|
                { label =
                    Element.paragraph [ Element.centerX, Element.centerY, Font.center ] [ Element.text k ]
                , onPress = Just v
                }
    in
    { name = name
    , picker =
        Element.wrappedRow [ Element.spacing 10 ] <|
            List.map option list
    }


type alias Color =
    String


color : { name : String, list : List ( String, Color ) } -> Color -> Picker Color
color { name, list } selected =
    let
        gray =
            Element.rgb255 0xD0 0xD0 0xD0

        contrast k =
            k
                |> Element.toRgb
                |> (\{ red, green, blue, alpha } ->
                        if red + green + blue > 1.5 then
                            { red = 0
                            , green = 0
                            , blue = 0
                            , alpha = alpha
                            }

                        else
                            { red = 1
                            , green = 1
                            , blue = 1
                            , alpha = alpha
                            }
                   )
                |> Element.fromRgb

        option ( k, v, isCustom ) =
            let
                contrastColor =
                    contrast <| Maybe.withDefault gray <| colorFromHex v

                isSelected =
                    String.toLower v == String.toLower selected
            in
            Input.button
                [ Element.alignTop
                , Element.width <| Element.px 180
                , Element.height <| Element.px <| round <| 180 / phi
                , Border.width <|
                    if isSelected then
                        4

                    else
                        1
                , Border.color <|
                    if isSelected then
                        Element.rgb 0.3 0.3 1

                    else
                        Element.rgb 0 0 0
                , Background.color <| Maybe.withDefault gray <| colorFromHex v
                , Element.padding 10
                ]
            <|
                { label =
                    if isCustom then
                        Element.row [ Element.centerX, Element.centerY, Font.color contrastColor ]
                            [ Element.text "Custom: "
                            , Element.html <|
                                Html.input
                                    [ Html.Events.onClick k
                                    , Html.Events.onInput identity
                                    , Html.Attributes.value k
                                    , Html.Attributes.type_ "color"
                                    ]
                                    []
                            ]

                    else
                        Element.el [ Element.centerX, Element.centerY, Font.color contrastColor ] <| Element.text k
                , onPress = Just v
                }

        custom =
            if List.any (\( _, v ) -> String.toLower v == String.toLower selected) list then
                "#00F0B0"

            else
                selected

        listWithCustom =
            List.map (\( k, v ) -> ( k, v, False )) list
                ++ [ ( custom, custom, True ) ]
    in
    { name = name
    , picker =
        Element.wrappedRow [ Element.spacing 10 ] <|
            List.map option listWithCustom
    }


map : (a -> b) -> Picker a -> Picker b
map f { name, picker } =
    { name = name
    , picker = Element.map f picker
    }


colorFromHex : String -> Maybe Element.Color
colorFromHex hex =
    let
        tuple h l =
            Maybe.map2 (\hh ll -> hh * 16 + ll) (hexCharToInt h) (hexCharToInt l)
    in
    case String.toList hex of
        [ '#', r1, r2, g1, g2, b1, b2 ] ->
            Maybe.map3 Element.rgb255
                (tuple r1 r2)
                (tuple g1 g2)
                (tuple b1 b2)

        _ ->
            Nothing


hexCharToInt : Char -> Maybe Int
hexCharToInt d =
    case Char.toUpper d of
        '0' ->
            Just 0

        '1' ->
            Just 1

        '2' ->
            Just 2

        '3' ->
            Just 3

        '4' ->
            Just 4

        '5' ->
            Just 5

        '6' ->
            Just 6

        '7' ->
            Just 7

        '8' ->
            Just 8

        '9' ->
            Just 9

        'A' ->
            Just
                0x0A

        'B' ->
            Just
                0x0B

        'C' ->
            Just
                0x0C

        'D' ->
            Just
                0x0D

        'E' ->
            Just
                0x0E

        'F' ->
            Just
                0x0F

        _ ->
            Nothing

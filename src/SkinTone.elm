module SkinTone exposing (SkinTone(..), toHex, view)

import Svg exposing (Svg, mask, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


view : SkinTone -> Svg msg
view skinTone =
    rect
        [ x "0"
        , y "0"
        , width "264"
        , height "280"
        , A.mask "url(#mask-6)"
        , fill <| toHex skinTone
        ]
        []


type SkinTone
    = Tanned
    | Yellow
    | Pale
    | Light
    | Brown
    | DarkBrown
    | Black
    | Custom String


toHex : SkinTone -> String
toHex skinTone =
    case skinTone of
        Tanned ->
            "#FD9841"

        Yellow ->
            "#F8D25C"

        Pale ->
            "#FFDBB4"

        Light ->
            "#EDB98A"

        Brown ->
            "#D08B5B"

        DarkBrown ->
            "#AE5D29"

        Black ->
            "#614335"

        Custom string ->
            string

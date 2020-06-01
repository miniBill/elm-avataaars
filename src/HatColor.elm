module HatColor exposing (HatColor(..), colorToHex, view)

import Svg exposing (Svg, g, mask, rect)
import Svg.Attributes as A exposing (fill, fillRule, height, id, width, x, y)


type HatColor
    = Black
    | Blue01
    | Blue02
    | Blue03
    | Gray01
    | Gray02
    | Heather
    | PastelBlue
    | PastelGreen
    | PastelOrange
    | PastelRed
    | PastelYellow
    | Pink
    | Red
    | White
    | Custom String


colorToHex : HatColor -> String
colorToHex hatColor =
    case hatColor of
        Black ->
            "#262E33"

        Blue01 ->
            "#65C9FF"

        Blue02 ->
            "#5199E4"

        Blue03 ->
            "#25557C"

        Gray01 ->
            "#E6E6E6"

        Gray02 ->
            "#929598"

        Heather ->
            "#3C4F5C"

        PastelBlue ->
            "#B1E2FF"

        PastelGreen ->
            "#A7FFC4"

        PastelOrange ->
            "#FFDEB5"

        PastelRed ->
            "#FFAFB9"

        PastelYellow ->
            "#FFFFB1"

        Pink ->
            "#FF488E"

        Red ->
            "#FF5C5C"

        White ->
            "#FFFFFF"

        Custom string ->
            string


view : { maskId : String, hatColor : HatColor } -> Svg msg
view { maskId, hatColor } =
    g [ id "Color/Palette/Gray-01", A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill <| colorToHex hatColor ]
        [ rect [ id "🖍Color", x "0", y "0", width "264", height "280" ]
            []
        ]

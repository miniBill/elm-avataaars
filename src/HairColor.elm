module HairColor exposing (HairColor(..), colorToHex, view)

import Svg exposing (Svg, g, mask, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


type HairColor
    = Auburn
    | Black
    | Blonde
    | BlondeGolden
    | Brown
    | BrownDark
    | PastelPink
    | Platinum
    | Red
    | SilverGray
    | Custom String


colorToHex : HairColor -> String
colorToHex hairColor =
    case hairColor of
        Auburn ->
            "#A55728"

        Black ->
            "#2C1B18"

        Blonde ->
            "#B58143"

        BlondeGolden ->
            "#D6B370"

        Brown ->
            "#724133"

        BrownDark ->
            "#4A312C"

        PastelPink ->
            "#F59797"

        Platinum ->
            "#ECDCBF"

        Red ->
            "#C93305"

        SilverGray ->
            "#E8E1E1"

        Custom string ->
            string


view : { maskId : String, hairColor : HairColor } -> Svg msg
view { maskId, hairColor } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fill <| colorToHex hairColor ]
        [ rect [ x "0", y "0", width "264", height "280" ] []
        ]

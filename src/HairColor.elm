module HairColor exposing (HairColor, auburn, black, blonde, blondeGolden, brown, brownDark, pastelPink, platinum, red, silverGray, view)

import Svg exposing (Svg, g, mask, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


type alias HairColor =
    String


auburn : HairColor
auburn =
    "#A55728"


black : HairColor
black =
    "#2C1B18"


blonde : HairColor
blonde =
    "#B58143"


blondeGolden : HairColor
blondeGolden =
    "#D6B370"


brown : HairColor
brown =
    "#724133"


brownDark : HairColor
brownDark =
    "#4A312C"


pastelPink : HairColor
pastelPink =
    "#F59797"


platinum : HairColor
platinum =
    "#ECDCBF"


red : HairColor
red =
    "#C93305"


silverGray : HairColor
silverGray =
    "#E8E1E1"


view : { maskId : String, hairColor : HairColor } -> Svg msg
view { maskId, hairColor } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fill hairColor ]
        [ rect [ x "0", y "0", width "264", height "280" ] []
        ]

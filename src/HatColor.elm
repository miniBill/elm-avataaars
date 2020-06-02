module HatColor exposing (HatColor, black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, view, white)

import Svg exposing (Svg, g, mask, rect)
import Svg.Attributes as A exposing (fill, fillRule, height, id, width, x, y)


type alias HatColor =
    String


black : HatColor
black =
    "#262E33"


blue01 : HatColor
blue01 =
    "#65C9FF"


blue02 : HatColor
blue02 =
    "#5199E4"


blue03 : HatColor
blue03 =
    "#25557C"


gray01 : HatColor
gray01 =
    "#E6E6E6"


gray02 : HatColor
gray02 =
    "#929598"


heather : HatColor
heather =
    "#3C4F5C"


pastelBlue : HatColor
pastelBlue =
    "#B1E2FF"


pastelGreen : HatColor
pastelGreen =
    "#A7FFC4"


pastelOrange : HatColor
pastelOrange =
    "#FFDEB5"


pastelRed : HatColor
pastelRed =
    "#FFAFB9"


pastelYellow : HatColor
pastelYellow =
    "#FFFFB1"


pink : HatColor
pink =
    "#FF488E"


red : HatColor
red =
    "#FF5C5C"


white : HatColor
white =
    "#FFFFFF"


view : { maskId : String, hatColor : HatColor } -> Svg msg
view { maskId, hatColor } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill hatColor ]
        [ rect [ id "🖍Color", x "0", y "0", width "264", height "280" ] []
        ]

module Avataaars.Clothes exposing
    ( Clothes(..)
    , Color, black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white
    )

{-|


# Clothes

@docs Clothes


# Colors

#docs Color, black,blue01,blue02,blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white

-}

import Avataaars.Graphics exposing (Graphics(..))


type Clothes
    = BlazerShirt
    | BlazerSweater
    | CollarSweater Color
    | GraphicShirt Color Graphics
    | Hoodie Color
    | Overall Color
    | ShirtCrewNeck Color
    | ShirtScoopNeck Color
    | ShirtVNeck Color


type alias Color =
    String


black : Color
black =
    "#262E33"


blue01 : Color
blue01 =
    "#65C9FF"


blue02 : Color
blue02 =
    "#5199E4"


blue03 : Color
blue03 =
    "#25557C"


gray01 : Color
gray01 =
    "#E6E6E6"


gray02 : Color
gray02 =
    "#929598"


heather : Color
heather =
    "#3C4F5C"


pastelBlue : Color
pastelBlue =
    "#B1E2FF"


pastelGreen : Color
pastelGreen =
    "#A7FFC4"


pastelOrange : Color
pastelOrange =
    "#FFDEB5"


pastelRed : Color
pastelRed =
    "#FFAFB9"


pastelYellow : Color
pastelYellow =
    "#FFFFB1"


pink : Color
pink =
    "#FF488E"


red : Color
red =
    "#FF5C5C"


white : Color
white =
    "#FFFFFF"

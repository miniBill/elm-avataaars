module Avataaars.Clothes exposing
    ( Clothes(..)
    , Color, black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white
    )

{-|


# Clothes

@docs Clothes


# Colors

These are just `String`s, so feel free to define others, and _do_ let your users choose their own.

@docs Color, black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white

-}

import Avataaars.Graphics exposing (Graphics(..))


{-| -}
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


{-| -}
type alias Color =
    String


{-| #262E33
-}
black : Color
black =
    "#262E33"


{-| #65C9FF
-}
blue01 : Color
blue01 =
    "#65C9FF"


{-| #5199E4
-}
blue02 : Color
blue02 =
    "#5199E4"


{-| #25557C
-}
blue03 : Color
blue03 =
    "#25557C"


{-| #E6E6E6
-}
gray01 : Color
gray01 =
    "#E6E6E6"


{-| #929598
-}
gray02 : Color
gray02 =
    "#929598"


{-| #3C4F5C
-}
heather : Color
heather =
    "#3C4F5C"


{-| #B1E2FF
-}
pastelBlue : Color
pastelBlue =
    "#B1E2FF"


{-| #A7FFC4
-}
pastelGreen : Color
pastelGreen =
    "#A7FFC4"


{-| #FFDEB5
-}
pastelOrange : Color
pastelOrange =
    "#FFDEB5"


{-| #FFAFB9
-}
pastelRed : Color
pastelRed =
    "#FFAFB9"


{-| #FFFFB1
-}
pastelYellow : Color
pastelYellow =
    "#FFFFB1"


{-| #FF488E
-}
pink : Color
pink =
    "#FF488E"


{-| #FF5C5C
-}
red : Color
red =
    "#FF5C5C"


{-| #FFFFFF
-}
white : Color
white =
    "#FFFFFF"

module Avataaars.HatColor exposing
    ( HatColor
    , black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white
    )

{-|


# HatColor

@docs HatColor


# Default colors

These are just `String`s, so feel free to define others, and _do_ let your users choose their own.

@docs black, blue01, blue02, blue03, gray01, gray02, heather, pastelBlue, pastelGreen, pastelOrange, pastelRed, pastelYellow, pink, red, white

-}


{-| -}
type alias HatColor =
    String


{-| #262E33
-}
black : HatColor
black =
    "#262E33"


{-| #65C9FF
-}
blue01 : HatColor
blue01 =
    "#65C9FF"


{-| #5199E4
-}
blue02 : HatColor
blue02 =
    "#5199E4"


{-| #25557C
-}
blue03 : HatColor
blue03 =
    "#25557C"


{-| #E6E6E6
-}
gray01 : HatColor
gray01 =
    "#E6E6E6"


{-| #929598
-}
gray02 : HatColor
gray02 =
    "#929598"


{-| #3C4F5C
-}
heather : HatColor
heather =
    "#3C4F5C"


{-| #B1E2FF
-}
pastelBlue : HatColor
pastelBlue =
    "#B1E2FF"


{-| #A7FFC4
-}
pastelGreen : HatColor
pastelGreen =
    "#A7FFC4"


{-| #FFDEB5
-}
pastelOrange : HatColor
pastelOrange =
    "#FFDEB5"


{-| #FFAFB9
-}
pastelRed : HatColor
pastelRed =
    "#FFAFB9"


{-| #FFFFB1
-}
pastelYellow : HatColor
pastelYellow =
    "#FFFFB1"


{-| #FF488E
-}
pink : HatColor
pink =
    "#FF488E"


{-| #FF5C5C
-}
red : HatColor
red =
    "#FF5C5C"


{-| #FFFFFF
-}
white : HatColor
white =
    "#FFFFFF"

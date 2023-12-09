module Avataaars.HairColor exposing
    ( HairColor
    , auburn, black, blonde, blondeGolden, brown, brownDark, pastelPink, platinum, red, silverGray
    )

{-|


# Definition

@docs HairColor


# Default colors

These are just `String`s, so feel free to define others, and _do_ let your users choose their own.

@docs auburn, black, blonde, blondeGolden, brown, brownDark, pastelPink, platinum, red, silverGray

-}


{-| Hair colors are just strings containing a color such as `"#A55728"`.
-}
type alias HairColor =
    String


{-| #A55728
-}
auburn : HairColor
auburn =
    "#A55728"


{-| #2C1B18
-}
black : HairColor
black =
    "#2C1B18"


{-| #B58143
-}
blonde : HairColor
blonde =
    "#B58143"


{-| #D6B370
-}
blondeGolden : HairColor
blondeGolden =
    "#D6B370"


{-| #724133
-}
brown : HairColor
brown =
    "#724133"


{-| #4A312C
-}
brownDark : HairColor
brownDark =
    "#4A312C"


{-| #F59797
-}
pastelPink : HairColor
pastelPink =
    "#F59797"


{-| #ECDCBF
-}
platinum : HairColor
platinum =
    "#ECDCBF"


{-| #C93305
-}
red : HairColor
red =
    "#C93305"


{-| #E8E1E1
-}
silverGray : HairColor
silverGray =
    "#E8E1E1"

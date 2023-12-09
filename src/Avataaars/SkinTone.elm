module Avataaars.SkinTone exposing
    ( SkinTone
    , black, brown, darkBrown, light, pale, tanned, yellow
    )

{-|


# Definition

@docs SkinTone


# Default tones

These are just hex `String`s, so feel free to define others, and _do_ let your users choose their own.

@docs black, brown, darkBrown, light, pale, tanned, yellow

-}


{-| A skin tone is just a string containing a color such as `"#F8D25C"`.
-}
type alias SkinTone =
    String


{-| #FD9841
-}
tanned : SkinTone
tanned =
    "#FD9841"


{-| #F8D25C
-}
yellow : SkinTone
yellow =
    "#F8D25C"


{-| #FFDBB4
-}
pale : SkinTone
pale =
    "#FFDBB4"


{-| #EDB98A
-}
light : SkinTone
light =
    "#EDB98A"


{-| #D08B5B
-}
brown : SkinTone
brown =
    "#D08B5B"


{-| #AE5D29
-}
darkBrown : SkinTone
darkBrown =
    "#AE5D29"


{-| #614335
-}
black : SkinTone
black =
    "#614335"

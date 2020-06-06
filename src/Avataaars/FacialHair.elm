module Avataaars.FacialHair exposing (FacialHair(..))

{-|


# Facial Hair

@docs FacialHair

-}

import Avataaars.HairColor exposing (HairColor)


{-| -}
type FacialHair
    = Blank
    | BeardMedium HairColor
    | BeardLight HairColor
    | BeardMajestic HairColor
    | MoustacheFancy HairColor
    | MoustacheMagnum HairColor

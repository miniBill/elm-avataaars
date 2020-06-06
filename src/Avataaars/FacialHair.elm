module Avataaars.FacialHair exposing (FacialHair(..))

import Avataaars.HairColor exposing (HairColor)


type FacialHair
    = Blank
    | BeardMedium HairColor
    | BeardLight HairColor
    | BeardMajestic HairColor
    | MoustacheFancy HairColor
    | MoustacheMagnum HairColor

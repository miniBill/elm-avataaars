module Avataaars.Face exposing (Face)

{-|


# Face

@docs Face

-}

import Avataaars.Eyebrow exposing (Eyebrow)
import Avataaars.Eyes exposing (Eyes)
import Avataaars.Mouth exposing (Mouth)


{-| -}
type alias Face =
    { mouth : Mouth
    , eyes : Eyes
    , eyebrow : Eyebrow
    }

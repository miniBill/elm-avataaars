module Avataaars.Top exposing (Top(..), TopFacialHair(..), TopHatColorAccessory(..), TopAccessoryFacialHair(..), TopHatColorAccessoryFacialHair(..), TopHairColorAccessoryFacialHair(..))

{-|


# Types

@docs Top, TopFacialHair, TopHatColorAccessory, TopAccessoryFacialHair, TopHatColorAccessoryFacialHair, TopHairColorAccessoryFacialHair

-}

import Avataaars.Accessory exposing (Accessory)
import Avataaars.FacialHair exposing (FacialHair)
import Avataaars.HairColor exposing (HairColor)
import Avataaars.HatColor exposing (HatColor)


{-| A type represeting an hair/hat/accessory combo.
-}
type Top
    = TopFacialHair TopFacialHair FacialHair
    | TopHatColorAccessory TopHatColorAccessory HatColor Accessory
    | TopAccessoryFacialHair TopAccessoryFacialHair Accessory FacialHair
    | TopHatColorAccessoryFacialHair TopHatColorAccessoryFacialHair HatColor Accessory FacialHair
    | TopHairColorAccessoryFacialHair TopHairColorAccessoryFacialHair HairColor Accessory FacialHair


{-| A `Top` supporting `FacialHair` only.
-}
type TopFacialHair
    = Eyepatch


{-| A `Top` supporting `HatColor` and `Accessory` only.
-}
type TopHatColorAccessory
    = Hijab


{-| A `Top` supporting `Accessory` and `FacialHair` only.
-}
type TopAccessoryFacialHair
    = NoHair
    | Hat
    | LongHairFrida
    | LongHairShavedSides


{-| A `Top` supporting `HatColor`, `Accessory` and `FacialHair`.
-}
type TopHatColorAccessoryFacialHair
    = Turban
    | WinterHat1
    | WinterHat2
    | WinterHat3
    | WinterHat4


{-| A `Top` supporting `HairColor`, `Accessory` and `FacialHair`.
-}
type TopHairColorAccessoryFacialHair
    = LongHairBigHair
    | LongHairBob
    | LongHairBun
    | LongHairCurly
    | LongHairCurvy
    | LongHairDreads
    | LongHairFro
    | LongHairFroBand
    | LongHairNotTooLong
    | LongHairMiaWallace
    | LongHairStraight
    | LongHairStraight2
    | LongHairStraightStrand
    | ShortHairDreads01
    | ShortHairDreads02
    | ShortHairFrizzle
    | ShortHairShaggyMullet
    | ShortHairShortCurly
    | ShortHairShortFlat
    | ShortHairShortRound
    | ShortHairShortWaved
    | ShortHairSides
    | ShortHairTheCaesar
    | ShortHairTheCaesarSidePart

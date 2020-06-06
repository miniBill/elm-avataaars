module Avataaars.Top exposing (Top(..), TopAccessoryFacialHair(..), TopAccessoryHairColorFacialHair(..), TopAccessoryHatColor(..), TopAccessoryHatColorFacialHair(..), TopFacialHair(..))

import Avataaars.Accessory exposing (Accessory)
import Avataaars.FacialHair exposing (FacialHair)
import Avataaars.HairColor exposing (HairColor)
import Avataaars.HatColor exposing (HatColor)


type Top
    = TopFacialHair TopFacialHair FacialHair
    | TopAccessoryHatColor TopAccessoryHatColor Accessory HatColor
    | TopAccessoryFacialHair TopAccessoryFacialHair Accessory FacialHair
    | TopAccessoryHatColorFacialHair TopAccessoryHatColorFacialHair HatColor Accessory FacialHair
    | TopAccessoryHairColorFacialHair TopAccessoryHairColorFacialHair HairColor Accessory FacialHair


type TopFacialHair
    = Eyepatch


type TopAccessoryHatColor
    = Hijab


type TopAccessoryFacialHair
    = NoHair
    | Hat
    | LongHairFrida
    | LongHairShavedSides


type TopAccessoryHatColorFacialHair
    = Turban
    | WinterHat1
    | WinterHat2
    | WinterHat3
    | WinterHat4


type TopAccessoryHairColorFacialHair
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

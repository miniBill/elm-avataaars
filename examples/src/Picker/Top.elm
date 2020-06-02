module Picker.Top exposing (picker)

import Accessory exposing (Accessory)
import FacialHair exposing (FacialHair)
import HairColor exposing (HairColor)
import HatColor exposing (HatColor)
import Picker exposing (Picker)
import Picker.Accessory
import Picker.FacialHair
import Picker.HairColor
import Picker.HatColor
import Top exposing (AccFac(..), AccHairFac(..), AccHat(..), AccHatFac(..), Fac(..), Top(..))


picker : Top -> List (Picker Top)
picker top =
    let
        mainPicker : Accessory -> FacialHair -> HatColor -> HairColor -> Picker Top
        mainPicker accessory facialHair hatColor hairColor =
            Picker.text { name = "Top", list = list accessory facialHair hatColor hairColor } top
    in
    case top of
        Fac ctor facialHair ->
            mainPicker Accessory.Blank facialHair HatColor.black HairColor.black
                :: List.map (Picker.map <| Fac ctor) (Picker.FacialHair.picker facialHair)

        AccHat ctor accessory hatColor ->
            [ mainPicker accessory FacialHair.Blank hatColor HairColor.black
            , Picker.map (\accessory_ -> AccHat ctor accessory_ hatColor) <| Picker.Accessory.picker accessory
            , Picker.map (AccHat ctor accessory) <| Picker.HatColor.picker hatColor
            ]

        AccFac ctor accessory facialHair ->
            [ mainPicker accessory facialHair HatColor.black HairColor.black
            , Picker.map (\accessory_ -> AccFac ctor accessory_ facialHair) <| Picker.Accessory.picker accessory
            ]
                ++ List.map (Picker.map <| AccFac ctor accessory) (Picker.FacialHair.picker facialHair)

        AccHatFac ctor accessory hatColor facialHair ->
            [ mainPicker accessory facialHair hatColor HairColor.black
            , Picker.map (\accessory_ -> AccHatFac ctor accessory_ hatColor facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hatColor_ -> AccHatFac ctor accessory hatColor_ facialHair) <| Picker.HatColor.picker hatColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> AccHatFac ctor accessory hatColor facialHair_) (Picker.FacialHair.picker facialHair)

        AccHairFac ctor accessory hairColor facialHair ->
            [ mainPicker accessory facialHair HatColor.black hairColor
            , Picker.map (\accessory_ -> AccHairFac ctor accessory_ hairColor facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hairColor_ -> AccHairFac ctor accessory hairColor_ facialHair) <| Picker.HairColor.picker hairColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> AccHairFac ctor accessory hairColor facialHair_) (Picker.FacialHair.picker facialHair)


list : Accessory -> FacialHair -> HatColor -> HairColor -> List ( String, Top )
list accessory facialHair hatColor hairColor =
    [ ( "Eyepatch", Fac Eyepatch facialHair )
    , ( "Hijab", AccHat Hijab accessory hatColor )
    , ( "No Hair", AccFac NoHair accessory facialHair )
    , ( "Hat", AccFac Hat accessory facialHair )
    , ( "Long Hair - Frida", AccFac LongHairFrida accessory facialHair )
    , ( "Long Hair - Shaved Sides", AccFac LongHairShavedSides accessory facialHair )
    , ( "Turban", AccHatFac Turban accessory hatColor facialHair )
    , ( "WinterHat - 1", AccHatFac WinterHat1 accessory hatColor facialHair )
    , ( "WinterHat - 2", AccHatFac WinterHat2 accessory hatColor facialHair )
    , ( "WinterHat - 3", AccHatFac WinterHat3 accessory hatColor facialHair )
    , ( "WinterHat - 4", AccHatFac WinterHat4 accessory hatColor facialHair )
    , ( "Long Hair - Big Hair", AccHairFac LongHairBigHair accessory hairColor facialHair )
    , ( "Long Hair - Bob", AccHairFac LongHairBob accessory hairColor facialHair )
    , ( "Long Hair - Bun", AccHairFac LongHairBun accessory hairColor facialHair )
    , ( "Long Hair - Curly", AccHairFac LongHairCurly accessory hairColor facialHair )
    , ( "Long Hair - Curvy", AccHairFac LongHairCurvy accessory hairColor facialHair )
    , ( "Long Hair - Dreads", AccHairFac LongHairDreads accessory hairColor facialHair )
    , ( "Long Hair - Fro", AccHairFac LongHairFro accessory hairColor facialHair )
    , ( "Long Hair - Fro Band", AccHairFac LongHairFroBand accessory hairColor facialHair )
    , ( "Long Hair - Not Too Long", AccHairFac LongHairNotTooLong accessory hairColor facialHair )
    , ( "Long Hair - Mia Wallace", AccHairFac LongHairMiaWallace accessory hairColor facialHair )
    , ( "Long Hair - Straight", AccHairFac LongHairStraight accessory hairColor facialHair )
    , ( "Long Hair - Straight 2", AccHairFac LongHairStraight2 accessory hairColor facialHair )
    , ( "Long Hair - Straight Strand", AccHairFac LongHairStraightStrand accessory hairColor facialHair )
    , ( "Short Hair - Dreads 1", AccHairFac ShortHairDreads01 accessory hairColor facialHair )
    , ( "Short Hair - Dreads 2", AccHairFac ShortHairDreads02 accessory hairColor facialHair )
    , ( "Short Hair - Frizzle", AccHairFac ShortHairFrizzle accessory hairColor facialHair )
    , ( "Short Hair - Shaggy Mullet", AccHairFac ShortHairShaggyMullet accessory hairColor facialHair )
    , ( "Short Hair - Short Curly", AccHairFac ShortHairShortCurly accessory hairColor facialHair )
    , ( "Short Hair - Short Flat", AccHairFac ShortHairShortFlat accessory hairColor facialHair )
    , ( "Short Hair - Short Round", AccHairFac ShortHairShortRound accessory hairColor facialHair )
    , ( "Short Hair - Short Waved", AccHairFac ShortHairShortWaved accessory hairColor facialHair )
    , ( "Short Hair - Sides", AccHairFac ShortHairSides accessory hairColor facialHair )
    , ( "Short Hair - The Caesar", AccHairFac ShortHairTheCaesar accessory hairColor facialHair )
    , ( "Short Hair - The Caesar Side Part", AccHairFac ShortHairTheCaesarSidePart accessory hairColor facialHair )
    ]

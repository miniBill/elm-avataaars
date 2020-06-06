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
import Top exposing (Top(..), TopAccessoryFacialHair(..), TopAccessoryHairColorFacialHair(..), TopAccessoryHatColor(..), TopAccessoryHatColorFacialHair(..), TopFacialHair(..))


picker : Top -> List (Picker Top)
picker top =
    let
        mainPicker : HatColor -> HairColor -> Accessory -> FacialHair -> Picker Top
        mainPicker hatColor hairColor accessory facialHair =
            Picker.text { name = "Top", list = list hatColor hairColor accessory facialHair } top
    in
    case top of
        TopFacialHair ctor facialHair ->
            mainPicker HatColor.black HairColor.black Accessory.Blank facialHair
                :: List.map (Picker.map <| TopFacialHair ctor) (Picker.FacialHair.picker facialHair)

        TopAccessoryHatColor ctor accessory hatColor ->
            [ mainPicker hatColor HairColor.black accessory FacialHair.Blank
            , Picker.map (\accessory_ -> TopAccessoryHatColor ctor accessory_ hatColor) <| Picker.Accessory.picker accessory
            , Picker.map (TopAccessoryHatColor ctor accessory) <| Picker.HatColor.picker hatColor
            ]

        TopAccessoryFacialHair ctor accessory facialHair ->
            [ mainPicker HatColor.black HairColor.black accessory facialHair
            , Picker.map (\accessory_ -> TopAccessoryFacialHair ctor accessory_ facialHair) <| Picker.Accessory.picker accessory
            ]
                ++ List.map (Picker.map <| TopAccessoryFacialHair ctor accessory) (Picker.FacialHair.picker facialHair)

        TopAccessoryHatColorFacialHair ctor hatColor accessory facialHair ->
            [ mainPicker hatColor HairColor.black accessory facialHair
            , Picker.map (\accessory_ -> TopAccessoryHatColorFacialHair ctor hatColor accessory_ facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hatColor_ -> TopAccessoryHatColorFacialHair ctor hatColor_ accessory facialHair) <| Picker.HatColor.picker hatColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> TopAccessoryHatColorFacialHair ctor hatColor accessory facialHair_) (Picker.FacialHair.picker facialHair)

        TopAccessoryHairColorFacialHair ctor hairColor accessory facialHair ->
            [ mainPicker HatColor.black hairColor accessory facialHair
            , Picker.map (\accessory_ -> TopAccessoryHairColorFacialHair ctor hairColor accessory_ facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hairColor_ -> TopAccessoryHairColorFacialHair ctor hairColor_ accessory facialHair) <| Picker.HairColor.picker hairColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> TopAccessoryHairColorFacialHair ctor hairColor accessory facialHair_) (Picker.FacialHair.picker facialHair)


list : HatColor -> HairColor -> Accessory -> FacialHair -> List ( String, Top )
list hatColor hairColor accessory facialHair =
    [ ( "Eyepatch", TopFacialHair Eyepatch facialHair )
    , ( "Hijab", TopAccessoryHatColor Hijab accessory hatColor )
    , ( "No Hair", TopAccessoryFacialHair NoHair accessory facialHair )
    , ( "Hat", TopAccessoryFacialHair Hat accessory facialHair )
    , ( "Long Hair - Frida", TopAccessoryFacialHair LongHairFrida accessory facialHair )
    , ( "Long Hair - Shaved Sides", TopAccessoryFacialHair LongHairShavedSides accessory facialHair )
    , ( "Turban", TopAccessoryHatColorFacialHair Turban hatColor accessory facialHair )
    , ( "WinterHat - 1", TopAccessoryHatColorFacialHair WinterHat1 hatColor accessory facialHair )
    , ( "WinterHat - 2", TopAccessoryHatColorFacialHair WinterHat2 hatColor accessory facialHair )
    , ( "WinterHat - 3", TopAccessoryHatColorFacialHair WinterHat3 hatColor accessory facialHair )
    , ( "WinterHat - 4", TopAccessoryHatColorFacialHair WinterHat4 hatColor accessory facialHair )
    , ( "Long Hair - Big Hair", TopAccessoryHairColorFacialHair LongHairBigHair hairColor accessory facialHair )
    , ( "Long Hair - Bob", TopAccessoryHairColorFacialHair LongHairBob hairColor accessory facialHair )
    , ( "Long Hair - Bun", TopAccessoryHairColorFacialHair LongHairBun hairColor accessory facialHair )
    , ( "Long Hair - Curly", TopAccessoryHairColorFacialHair LongHairCurly hairColor accessory facialHair )
    , ( "Long Hair - Curvy", TopAccessoryHairColorFacialHair LongHairCurvy hairColor accessory facialHair )
    , ( "Long Hair - Dreads", TopAccessoryHairColorFacialHair LongHairDreads hairColor accessory facialHair )
    , ( "Long Hair - Fro", TopAccessoryHairColorFacialHair LongHairFro hairColor accessory facialHair )
    , ( "Long Hair - Fro Band", TopAccessoryHairColorFacialHair LongHairFroBand hairColor accessory facialHair )
    , ( "Long Hair - Not Too Long", TopAccessoryHairColorFacialHair LongHairNotTooLong hairColor accessory facialHair )
    , ( "Long Hair - Mia Wallace", TopAccessoryHairColorFacialHair LongHairMiaWallace hairColor accessory facialHair )
    , ( "Long Hair - Straight", TopAccessoryHairColorFacialHair LongHairStraight hairColor accessory facialHair )
    , ( "Long Hair - Straight 2", TopAccessoryHairColorFacialHair LongHairStraight2 hairColor accessory facialHair )
    , ( "Long Hair - Straight Strand", TopAccessoryHairColorFacialHair LongHairStraightStrand hairColor accessory facialHair )
    , ( "Short Hair - Dreads 1", TopAccessoryHairColorFacialHair ShortHairDreads01 hairColor accessory facialHair )
    , ( "Short Hair - Dreads 2", TopAccessoryHairColorFacialHair ShortHairDreads02 hairColor accessory facialHair )
    , ( "Short Hair - Frizzle", TopAccessoryHairColorFacialHair ShortHairFrizzle hairColor accessory facialHair )
    , ( "Short Hair - Shaggy Mullet", TopAccessoryHairColorFacialHair ShortHairShaggyMullet hairColor accessory facialHair )
    , ( "Short Hair - Short Curly", TopAccessoryHairColorFacialHair ShortHairShortCurly hairColor accessory facialHair )
    , ( "Short Hair - Short Flat", TopAccessoryHairColorFacialHair ShortHairShortFlat hairColor accessory facialHair )
    , ( "Short Hair - Short Round", TopAccessoryHairColorFacialHair ShortHairShortRound hairColor accessory facialHair )
    , ( "Short Hair - Short Waved", TopAccessoryHairColorFacialHair ShortHairShortWaved hairColor accessory facialHair )
    , ( "Short Hair - Sides", TopAccessoryHairColorFacialHair ShortHairSides hairColor accessory facialHair )
    , ( "Short Hair - The Caesar", TopAccessoryHairColorFacialHair ShortHairTheCaesar hairColor accessory facialHair )
    , ( "Short Hair - The Caesar Side Part", TopAccessoryHairColorFacialHair ShortHairTheCaesarSidePart hairColor accessory facialHair )
    ]

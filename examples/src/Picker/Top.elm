module Picker.Top exposing (picker)

import Avataaars.Accessory as Accessory exposing (Accessory)
import Avataaars.FacialHair as FacialHair exposing (FacialHair)
import Avataaars.HairColor as HairColor exposing (HairColor)
import Avataaars.HatColor as HatColor exposing (HatColor)
import Avataaars.Top exposing (Top(..), TopAccessoryFacialHair(..), TopFacialHair(..), TopHairColorAccessoryFacialHair(..), TopHatColorAccessory(..), TopHatColorAccessoryFacialHair(..))
import Picker exposing (Picker)
import Picker.Accessory
import Picker.FacialHair
import Picker.HairColor
import Picker.HatColor


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

        TopHatColorAccessory ctor hatColor accessory ->
            [ mainPicker hatColor HairColor.black accessory FacialHair.Blank
            , Picker.map (\accessory_ -> TopHatColorAccessory ctor hatColor accessory_) <| Picker.Accessory.picker accessory
            , Picker.map (\hatColor_ -> TopHatColorAccessory ctor hatColor_ accessory) <| Picker.HatColor.picker hatColor
            ]

        TopAccessoryFacialHair ctor accessory facialHair ->
            [ mainPicker HatColor.black HairColor.black accessory facialHair
            , Picker.map (\accessory_ -> TopAccessoryFacialHair ctor accessory_ facialHair) <| Picker.Accessory.picker accessory
            ]
                ++ List.map (Picker.map <| TopAccessoryFacialHair ctor accessory) (Picker.FacialHair.picker facialHair)

        TopHatColorAccessoryFacialHair ctor hatColor accessory facialHair ->
            [ mainPicker hatColor HairColor.black accessory facialHair
            , Picker.map (\accessory_ -> TopHatColorAccessoryFacialHair ctor hatColor accessory_ facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hatColor_ -> TopHatColorAccessoryFacialHair ctor hatColor_ accessory facialHair) <| Picker.HatColor.picker hatColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> TopHatColorAccessoryFacialHair ctor hatColor accessory facialHair_) (Picker.FacialHair.picker facialHair)

        TopHairColorAccessoryFacialHair ctor hairColor accessory facialHair ->
            [ mainPicker HatColor.black hairColor accessory facialHair
            , Picker.map (\accessory_ -> TopHairColorAccessoryFacialHair ctor hairColor accessory_ facialHair) <| Picker.Accessory.picker accessory
            , Picker.map (\hairColor_ -> TopHairColorAccessoryFacialHair ctor hairColor_ accessory facialHair) <| Picker.HairColor.picker hairColor
            ]
                ++ List.map (Picker.map <| \facialHair_ -> TopHairColorAccessoryFacialHair ctor hairColor accessory facialHair_) (Picker.FacialHair.picker facialHair)


list : HatColor -> HairColor -> Accessory -> FacialHair -> List ( String, Top )
list hatColor hairColor accessory facialHair =
    [ ( "Eyepatch", TopFacialHair Eyepatch facialHair )
    , ( "Hijab", TopHatColorAccessory Hijab hatColor accessory )
    , ( "No Hair", TopAccessoryFacialHair NoHair accessory facialHair )
    , ( "Hat", TopAccessoryFacialHair Hat accessory facialHair )
    , ( "Long Hair - Frida", TopAccessoryFacialHair LongHairFrida accessory facialHair )
    , ( "Long Hair - Shaved Sides", TopAccessoryFacialHair LongHairShavedSides accessory facialHair )
    , ( "Turban", TopHatColorAccessoryFacialHair Turban hatColor accessory facialHair )
    , ( "WinterHat - 1", TopHatColorAccessoryFacialHair WinterHat1 hatColor accessory facialHair )
    , ( "WinterHat - 2", TopHatColorAccessoryFacialHair WinterHat2 hatColor accessory facialHair )
    , ( "WinterHat - 3", TopHatColorAccessoryFacialHair WinterHat3 hatColor accessory facialHair )
    , ( "WinterHat - 4", TopHatColorAccessoryFacialHair WinterHat4 hatColor accessory facialHair )
    , ( "Long Hair - Big Hair", TopHairColorAccessoryFacialHair LongHairBigHair hairColor accessory facialHair )
    , ( "Long Hair - Bob", TopHairColorAccessoryFacialHair LongHairBob hairColor accessory facialHair )
    , ( "Long Hair - Bun", TopHairColorAccessoryFacialHair LongHairBun hairColor accessory facialHair )
    , ( "Long Hair - Curly", TopHairColorAccessoryFacialHair LongHairCurly hairColor accessory facialHair )
    , ( "Long Hair - Curvy", TopHairColorAccessoryFacialHair LongHairCurvy hairColor accessory facialHair )
    , ( "Long Hair - Dreads", TopHairColorAccessoryFacialHair LongHairDreads hairColor accessory facialHair )
    , ( "Long Hair - Fro", TopHairColorAccessoryFacialHair LongHairFro hairColor accessory facialHair )
    , ( "Long Hair - Fro Band", TopHairColorAccessoryFacialHair LongHairFroBand hairColor accessory facialHair )
    , ( "Long Hair - Not Too Long", TopHairColorAccessoryFacialHair LongHairNotTooLong hairColor accessory facialHair )
    , ( "Long Hair - Mia Wallace", TopHairColorAccessoryFacialHair LongHairMiaWallace hairColor accessory facialHair )
    , ( "Long Hair - Straight", TopHairColorAccessoryFacialHair LongHairStraight hairColor accessory facialHair )
    , ( "Long Hair - Straight 2", TopHairColorAccessoryFacialHair LongHairStraight2 hairColor accessory facialHair )
    , ( "Long Hair - Straight Strand", TopHairColorAccessoryFacialHair LongHairStraightStrand hairColor accessory facialHair )
    , ( "Short Hair - Dreads 1", TopHairColorAccessoryFacialHair ShortHairDreads01 hairColor accessory facialHair )
    , ( "Short Hair - Dreads 2", TopHairColorAccessoryFacialHair ShortHairDreads02 hairColor accessory facialHair )
    , ( "Short Hair - Frizzle", TopHairColorAccessoryFacialHair ShortHairFrizzle hairColor accessory facialHair )
    , ( "Short Hair - Shaggy Mullet", TopHairColorAccessoryFacialHair ShortHairShaggyMullet hairColor accessory facialHair )
    , ( "Short Hair - Short Curly", TopHairColorAccessoryFacialHair ShortHairShortCurly hairColor accessory facialHair )
    , ( "Short Hair - Short Flat", TopHairColorAccessoryFacialHair ShortHairShortFlat hairColor accessory facialHair )
    , ( "Short Hair - Short Round", TopHairColorAccessoryFacialHair ShortHairShortRound hairColor accessory facialHair )
    , ( "Short Hair - Short Waved", TopHairColorAccessoryFacialHair ShortHairShortWaved hairColor accessory facialHair )
    , ( "Short Hair - Sides", TopHairColorAccessoryFacialHair ShortHairSides hairColor accessory facialHair )
    , ( "Short Hair - The Caesar", TopHairColorAccessoryFacialHair ShortHairTheCaesar hairColor accessory facialHair )
    , ( "Short Hair - The Caesar Side Part", TopHairColorAccessoryFacialHair ShortHairTheCaesarSidePart hairColor accessory facialHair )
    ]

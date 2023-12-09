module Avataaars.Random exposing (generate)

{-|


# Random

@docs generate

-}

import Avataaars exposing (Avataaar)
import Avataaars.Accessory exposing (Accessory)
import Avataaars.Clothes exposing (Clothes(..))
import Avataaars.Eyebrow exposing (Eyebrow)
import Avataaars.Eyes exposing (Eyes)
import Avataaars.Face exposing (Face)
import Avataaars.FacialHair exposing (FacialHair)
import Avataaars.Graphics exposing (Graphics)
import Avataaars.HairColor exposing (HairColor)
import Avataaars.HatColor exposing (HatColor)
import Avataaars.Mouth exposing (Mouth)
import Avataaars.SkinTone exposing (SkinTone)
import Avataaars.Top exposing (Top, TopAccessoryFacialHair, TopHairColorAccessoryFacialHair(..), TopHatColorAccessory, TopHatColorAccessoryFacialHair)
import Random exposing (Generator)
import Random.Extra


{-| Generates a random Avataar utilising a uniform distribution per part, per generation.
-}
generate : Generator Avataaar
generate =
    Random.map5 Avataaar Random.Extra.bool generateSkinTone generateClothes generateFace generateTop


generateAccessory : Generator Accessory
generateAccessory =
    Random.uniform Avataaars.Accessory.Blank
        [ Avataaars.Accessory.Kurt
        , Avataaars.Accessory.Prescription01
        , Avataaars.Accessory.Prescription02
        , Avataaars.Accessory.Round
        , Avataaars.Accessory.Sunglasses
        , Avataaars.Accessory.Wayfarers
        ]


generateClothes : Generator Clothes
generateClothes =
    Random.Extra.choices (Random.constant Avataaars.Clothes.BlazerShirt)
        [ Random.constant Avataaars.Clothes.BlazerSweater
        , Random.map CollarSweater generateClothesColor
        , Random.map2 GraphicShirt generateClothesColor generateGraphics
        , Random.map Hoodie generateClothesColor
        , Random.map Overall generateClothesColor
        , Random.map ShirtCrewNeck generateClothesColor
        , Random.map ShirtScoopNeck generateClothesColor
        , Random.map ShirtVNeck generateClothesColor
        ]


generateClothesColor : Generator Avataaars.Clothes.Color
generateClothesColor =
    Random.uniform Avataaars.Clothes.black
        [ Avataaars.Clothes.blue01
        , Avataaars.Clothes.blue02
        , Avataaars.Clothes.blue03
        , Avataaars.Clothes.gray01
        , Avataaars.Clothes.gray02
        , Avataaars.Clothes.heather
        , Avataaars.Clothes.pastelBlue
        , Avataaars.Clothes.pastelGreen
        , Avataaars.Clothes.pastelOrange
        , Avataaars.Clothes.pastelRed
        , Avataaars.Clothes.pastelYellow
        , Avataaars.Clothes.pink
        ]


generateGraphics : Generator Graphics
generateGraphics =
    Random.uniform Avataaars.Graphics.Bat
        [ Avataaars.Graphics.Cumbia
        , Avataaars.Graphics.Deer
        , Avataaars.Graphics.Diamond
        , Avataaars.Graphics.Hola
        , Avataaars.Graphics.Pizza
        , Avataaars.Graphics.Resist
        , Avataaars.Graphics.Selena
        , Avataaars.Graphics.Bear
        , Avataaars.Graphics.SkullOutline
        , Avataaars.Graphics.Skull
        ]


generateEyebrow : Generator Eyebrow
generateEyebrow =
    Random.uniform Avataaars.Eyebrow.Default
        [ Avataaars.Eyebrow.Angry
        , Avataaars.Eyebrow.AngryNatural
        , Avataaars.Eyebrow.DefaultNatural
        , Avataaars.Eyebrow.FlatNatural
        , Avataaars.Eyebrow.RaisedExcited
        , Avataaars.Eyebrow.RaisedExcitedNatural
        , Avataaars.Eyebrow.SadConcerned
        , Avataaars.Eyebrow.SadConcernedNatural
        , Avataaars.Eyebrow.UnibrowNatural
        , Avataaars.Eyebrow.UpDown
        , Avataaars.Eyebrow.UpDownNatural
        ]


generateEyes : Generator Eyes
generateEyes =
    Random.uniform Avataaars.Eyes.Default
        [ Avataaars.Eyes.Close
        , Avataaars.Eyes.Cry
        , Avataaars.Eyes.Dizzy
        , Avataaars.Eyes.EyeRoll
        , Avataaars.Eyes.Happy
        , Avataaars.Eyes.Hearts
        , Avataaars.Eyes.Side
        , Avataaars.Eyes.Squint
        , Avataaars.Eyes.Surprised
        , Avataaars.Eyes.Wink
        , Avataaars.Eyes.WinkWacky
        ]


generateMouth : Generator Mouth
generateMouth =
    Random.uniform Avataaars.Mouth.Default
        [ Avataaars.Mouth.Concerned
        , Avataaars.Mouth.Disbelief
        , Avataaars.Mouth.Eating
        , Avataaars.Mouth.Grimace
        , Avataaars.Mouth.Sad
        , Avataaars.Mouth.ScreamOpen
        , Avataaars.Mouth.Serious
        , Avataaars.Mouth.Smile
        , Avataaars.Mouth.Tongue
        , Avataaars.Mouth.Twinkle
        , Avataaars.Mouth.Vomit
        ]


generateFace : Generator Face
generateFace =
    Random.map3 Face generateMouth generateEyes generateEyebrow


generateFacialHair : Generator FacialHair
generateFacialHair =
    generateHairColor
        |> Random.andThen
            (\color ->
                Random.uniform Avataaars.FacialHair.Blank
                    [ Avataaars.FacialHair.BeardMedium color
                    , Avataaars.FacialHair.BeardLight color
                    , Avataaars.FacialHair.BeardMajestic color
                    , Avataaars.FacialHair.MoustacheFancy color
                    , Avataaars.FacialHair.MoustacheMagnum color
                    ]
            )


generateHairColor : Generator HairColor
generateHairColor =
    Random.uniform Avataaars.HairColor.auburn
        [ Avataaars.HairColor.black
        , Avataaars.HairColor.blonde
        , Avataaars.HairColor.blondeGolden
        , Avataaars.HairColor.brown
        , Avataaars.HairColor.brownDark
        , Avataaars.HairColor.pastelPink
        , Avataaars.HairColor.platinum
        , Avataaars.HairColor.red
        , Avataaars.HairColor.silverGray
        ]


generateHatColor : Generator HatColor
generateHatColor =
    Random.uniform Avataaars.HatColor.black
        [ Avataaars.HatColor.blue01
        , Avataaars.HatColor.blue02
        , Avataaars.HatColor.blue03
        , Avataaars.HatColor.gray01
        , Avataaars.HatColor.gray02
        , Avataaars.HatColor.heather
        , Avataaars.HatColor.pastelBlue
        , Avataaars.HatColor.pastelGreen
        , Avataaars.HatColor.pastelOrange
        , Avataaars.HatColor.pastelRed
        , Avataaars.HatColor.pastelYellow
        , Avataaars.HatColor.pink
        , Avataaars.HatColor.red
        , Avataaars.HatColor.white
        ]


generateSkinTone : Generator SkinTone
generateSkinTone =
    Random.uniform Avataaars.SkinTone.black
        [ Avataaars.SkinTone.brown
        , Avataaars.SkinTone.darkBrown
        , Avataaars.SkinTone.light
        , Avataaars.SkinTone.pale
        , Avataaars.SkinTone.tanned
        , Avataaars.SkinTone.yellow
        ]


generateTop : Generator Top
generateTop =
    Random.Extra.choices generateTopFacialHairGenerator
        [ generateTopHatColorAccessoryGenerator
        , generateTopAccessoryFacialHairGenerator
        , generateTopHatColorAccessoryFacialHairGenerator
        , generateTopHairColorAccessoryFacialHairGenerator
        ]


generateTopFacialHairGenerator : Generator Top
generateTopFacialHairGenerator =
    Random.map2 Avataaars.Top.TopFacialHair generateTopFacialHair generateFacialHair


generateTopHatColorAccessoryGenerator : Generator Top
generateTopHatColorAccessoryGenerator =
    Random.map3 Avataaars.Top.TopHatColorAccessory
        generateTopHatColorAccessory
        generateHatColor
        generateAccessory


generateTopAccessoryFacialHairGenerator : Generator Top
generateTopAccessoryFacialHairGenerator =
    Random.map3 Avataaars.Top.TopAccessoryFacialHair
        generateTopAccessoryFacialHair
        generateAccessory
        generateFacialHair


generateTopHatColorAccessoryFacialHairGenerator : Generator Top
generateTopHatColorAccessoryFacialHairGenerator =
    Random.map4 Avataaars.Top.TopHatColorAccessoryFacialHair
        generateTopHatColorAccessoryFacialHair
        generateHatColor
        generateAccessory
        generateFacialHair


generateTopHairColorAccessoryFacialHairGenerator : Generator Top
generateTopHairColorAccessoryFacialHairGenerator =
    Random.map4 Avataaars.Top.TopHairColorAccessoryFacialHair
        generateTopHairColorAccessoryFacialHair
        generateHairColor
        generateAccessory
        generateFacialHair


generateTopFacialHair : Generator Avataaars.Top.TopFacialHair
generateTopFacialHair =
    Random.constant Avataaars.Top.Eyepatch


generateTopHatColorAccessory : Generator TopHatColorAccessory
generateTopHatColorAccessory =
    Random.constant Avataaars.Top.Hijab


generateTopAccessoryFacialHair : Generator TopAccessoryFacialHair
generateTopAccessoryFacialHair =
    Random.uniform Avataaars.Top.NoHair
        [ Avataaars.Top.Hat
        , Avataaars.Top.LongHairFrida
        , Avataaars.Top.LongHairShavedSides
        ]


generateTopHatColorAccessoryFacialHair : Generator TopHatColorAccessoryFacialHair
generateTopHatColorAccessoryFacialHair =
    Random.uniform Avataaars.Top.Turban
        [ Avataaars.Top.WinterHat1
        , Avataaars.Top.WinterHat2
        , Avataaars.Top.WinterHat3
        , Avataaars.Top.WinterHat4
        ]


generateTopHairColorAccessoryFacialHair : Generator TopHairColorAccessoryFacialHair
generateTopHairColorAccessoryFacialHair =
    Random.uniform LongHairBigHair
        [ Avataaars.Top.LongHairBob
        , Avataaars.Top.LongHairBun
        , Avataaars.Top.LongHairCurly
        , Avataaars.Top.LongHairCurvy
        , Avataaars.Top.LongHairDreads
        , Avataaars.Top.LongHairFro
        , Avataaars.Top.LongHairFroBand
        , Avataaars.Top.LongHairNotTooLong
        , Avataaars.Top.LongHairMiaWallace
        , Avataaars.Top.LongHairStraight
        , Avataaars.Top.LongHairStraight2
        , Avataaars.Top.LongHairStraightStrand
        , Avataaars.Top.ShortHairDreads01
        , Avataaars.Top.ShortHairDreads02
        , Avataaars.Top.ShortHairFrizzle
        , Avataaars.Top.ShortHairShaggyMullet
        , Avataaars.Top.ShortHairShortCurly
        , Avataaars.Top.ShortHairShortFlat
        , Avataaars.Top.ShortHairShortRound
        , Avataaars.Top.ShortHairShortWaved
        , Avataaars.Top.ShortHairSides
        , Avataaars.Top.ShortHairTheCaesar
        , Avataaars.Top.ShortHairTheCaesarSidePart
        ]

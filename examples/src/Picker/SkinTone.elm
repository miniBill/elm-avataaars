module Picker.SkinTone exposing (picker)

import Avataaars.SkinTone as SkinTone exposing (SkinTone)
import Picker exposing (Picker)


list : List ( String, SkinTone )
list =
    [ ( "Tanned", SkinTone.tanned )
    , ( "Yellow", SkinTone.yellow )
    , ( "Pale", SkinTone.pale )
    , ( "Light", SkinTone.light )
    , ( "Brown", SkinTone.brown )
    , ( "Dark Brown", SkinTone.darkBrown )
    , ( "Black", SkinTone.black )
    ]


picker : SkinTone -> Picker SkinTone
picker =
    Picker.color
        { name = "Skin Color"
        , list = list
        }

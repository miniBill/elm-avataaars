module Picker.Accessory exposing (picker)

import Accessory exposing (Accessory(..))
import Picker exposing (Picker)


list : List ( String, Accessory )
list =
    [ ( "Blank", Blank )
    , ( "Kurt", Kurt )
    , ( "Prescription 1", Prescription01 )
    , ( "Prescription 2", Prescription02 )
    , ( "Round", Round )
    , ( "Sunglasses", Sunglasses )
    , ( "Wayfarers", Wayfarers )
    ]


picker : Accessory -> Picker Accessory
picker =
    Picker.text
        { name = "Accessory"
        , list = list
        }

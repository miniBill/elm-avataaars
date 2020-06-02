module Picker.HatColor exposing (picker)

import HatColor exposing (HatColor)
import Picker exposing (Picker)


list : List ( String, HatColor )
list =
    [ ( "Black", HatColor.black )
    , ( "Blue01", HatColor.blue01 )
    , ( "Blue02", HatColor.blue02 )
    , ( "Blue03", HatColor.blue03 )
    , ( "Gray01", HatColor.gray01 )
    , ( "Gray02", HatColor.gray02 )
    , ( "Heather", HatColor.heather )
    , ( "Pastel Blue", HatColor.pastelBlue )
    , ( "Pastel Green", HatColor.pastelGreen )
    , ( "Pastel Orange", HatColor.pastelOrange )
    , ( "Pastel Red", HatColor.pastelRed )
    , ( "Pastel Yellow", HatColor.pastelYellow )
    , ( "Pink", HatColor.pink )
    , ( "Red", HatColor.red )
    , ( "White", HatColor.white )
    ]


picker : HatColor -> Picker HatColor
picker =
    Picker.color
        { name = "Hat Color"
        , list = list
        }

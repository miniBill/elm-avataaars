module Picker.HairColor exposing (list, picker)

import Avataaars.HairColor as HairColor exposing (HairColor)
import Picker exposing (Picker)


list : List ( String, HairColor )
list =
    [ ( "Auburn", HairColor.auburn )
    , ( "Black", HairColor.black )
    , ( "Blonde", HairColor.blonde )
    , ( "Blonde Golden", HairColor.blondeGolden )
    , ( "Brown", HairColor.brown )
    , ( "Brown Dark", HairColor.brownDark )
    , ( "Pastel Pink", HairColor.pastelPink )
    , ( "Platinum", HairColor.platinum )
    , ( "Red", HairColor.red )
    , ( "Silver Gray", HairColor.silverGray )
    ]


picker : HairColor -> Picker HairColor
picker =
    Picker.color
        { name = "Hair Color"
        , list = list
        }

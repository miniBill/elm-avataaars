module Picker.HairColor exposing (list, picker)

import HairColor exposing (HairColor(..))
import Picker exposing (Picker)


list : List ( String, HairColor )
list =
    [ ( "Auburn", Auburn )
    , ( "Black", Black )
    , ( "Blonde", Blonde )
    , ( "Blonde Golden", BlondeGolden )
    , ( "Brown", Brown )
    , ( "Brown Dark", BrownDark )
    , ( "Pastel Pink", PastelPink )
    , ( "Platinum", Platinum )
    , ( "Red", Red )
    , ( "Silver Gray", SilverGray )
    ]


picker : HairColor -> Picker HairColor
picker =
    Picker.color
        { name = "Hair Color"
        , colorToHex = HairColor.colorToHex
        , list = list
        , custom = Custom
        , fromCustom =
            \c ->
                case c of
                    Custom i ->
                        Just i

                    _ ->
                        Nothing
        }

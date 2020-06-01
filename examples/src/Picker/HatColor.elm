module Picker.HatColor exposing (picker)

import HatColor exposing (HatColor(..))
import Picker exposing (Picker)


list : List ( String, HatColor )
list =
    [ ( "Black", Black )
    , ( "Blue01", Blue01 )
    , ( "Blue02", Blue02 )
    , ( "Blue03", Blue03 )
    , ( "Gray01", Gray01 )
    , ( "Gray02", Gray02 )
    , ( "Heather", Heather )
    , ( "Pastel Blue", PastelBlue )
    , ( "Pastel Green", PastelGreen )
    , ( "Pastel Orange", PastelOrange )
    , ( "Pastel Red", PastelRed )
    , ( "Pastel Yellow", PastelYellow )
    , ( "Pink", Pink )
    , ( "Red", Red )
    , ( "White", White )
    ]


picker : HatColor -> Picker HatColor
picker =
    Picker.color
        { name = "Hat Color"
        , colorToHex = HatColor.colorToHex
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

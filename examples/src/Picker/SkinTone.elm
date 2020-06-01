module Picker.SkinTone exposing (picker)

import Picker exposing (Picker)
import SkinTone exposing (SkinTone(..))


list : List ( String, SkinTone )
list =
    [ ( "Tanned", Tanned )
    , ( "Yellow", Yellow )
    , ( "Pale", Pale )
    , ( "Light", Light )
    , ( "Brown", Brown )
    , ( "Dark Brown", DarkBrown )
    , ( "Black", Black )
    ]


picker : SkinTone -> Picker SkinTone
picker =
    Picker.color
        { name = "Skin Color"
        , colorToHex = SkinTone.toHex
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

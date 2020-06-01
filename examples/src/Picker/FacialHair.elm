module Picker.FacialHair exposing (picker)

import FacialHair exposing (FacialHair(..))
import HairColor exposing (HairColor(..))
import Picker exposing (Picker)
import Picker.HairColor


list : HairColor -> List ( String, FacialHair )
list hairColor =
    [ ( "Blank", Blank )
    , ( "Beard - Medium", BeardMedium hairColor )
    , ( "Beard - Light", BeardLight hairColor )
    , ( "Beard - Majestic", BeardMajestic hairColor )
    , ( "Moustache - Fancy", MoustacheFancy hairColor )
    , ( "Moustache - Magnum", MoustacheMagnum hairColor )
    ]


picker : FacialHair -> List (Picker FacialHair)
picker facialHair =
    let
        mainPicker hairColor =
            Picker.text { name = "Facial Hair", list = list hairColor } facialHair

        hairColorPicker =
            Picker.color
                { name = "Facial Hair Color"
                , colorToHex = HairColor.colorToHex
                , list = Picker.HairColor.list
                , custom = Custom
                , fromCustom =
                    \c ->
                        case c of
                            Custom i ->
                                Just i

                            _ ->
                                Nothing
                }
    in
    case facialHair of
        Blank ->
            [ mainPicker HairColor.Black ]

        BeardMedium hairColor ->
            [ mainPicker hairColor
            , Picker.map BeardMedium <| hairColorPicker hairColor
            ]

        BeardLight hairColor ->
            [ mainPicker hairColor
            , Picker.map BeardLight <| hairColorPicker hairColor
            ]

        BeardMajestic hairColor ->
            [ mainPicker hairColor
            , Picker.map BeardMajestic <| hairColorPicker hairColor
            ]

        MoustacheFancy hairColor ->
            [ mainPicker hairColor
            , Picker.map MoustacheFancy <| hairColorPicker hairColor
            ]

        MoustacheMagnum hairColor ->
            [ mainPicker hairColor
            , Picker.map MoustacheMagnum <| hairColorPicker hairColor
            ]

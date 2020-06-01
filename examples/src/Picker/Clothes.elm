module Picker.Clothes exposing (picker)

import Clothes exposing (Clothes(..), Color(..))
import Graphics exposing (Graphics(..))
import Picker exposing (Picker)
import Picker.Graphics as Graphics


list : Color -> Graphics -> List ( String, Clothes )
list color graphics =
    [ ( "Blazer Shirt", BlazerShirt )
    , ( "Blazer Sweater", BlazerSweater )
    , ( "Collar Sweater", CollarSweater color )
    , ( "Graphic Shirt", GraphicShirt color graphics )
    , ( "Hoodie", Hoodie color )
    , ( "Overall", Overall color )
    , ( "Shirt Crew Neck", ShirtCrewNeck color )
    , ( "Shirt Scoop Neck", ShirtScoopNeck color )
    , ( "Shirt V Neck", ShirtVNeck color )
    ]


picker : Clothes -> List (Picker Clothes)
picker clothes =
    let
        radio : Color -> Graphics -> Picker Clothes
        radio color graphics =
            Picker.text { name = "Clothes", list = list color graphics } clothes
    in
    case clothes of
        BlazerShirt ->
            [ radio Black Graphics.Bat ]

        BlazerSweater ->
            [ radio Black Graphics.Bat ]

        CollarSweater color ->
            [ radio color Graphics.Bat
            , Picker.map CollarSweater <| colorPicker color
            ]

        GraphicShirt color graphics ->
            [ radio color graphics
            , Picker.map (\c -> GraphicShirt c graphics) <| colorPicker color
            , Picker.map (GraphicShirt color) <| Graphics.picker graphics
            ]

        Hoodie color ->
            [ radio color Graphics.Bat
            , Picker.map Hoodie <| colorPicker color
            ]

        Overall color ->
            [ radio color Graphics.Bat
            , Picker.map Overall <| colorPicker color
            ]

        ShirtCrewNeck color ->
            [ radio color Graphics.Bat
            , Picker.map ShirtCrewNeck <| colorPicker color
            ]

        ShirtScoopNeck color ->
            [ radio color Graphics.Bat
            , Picker.map ShirtScoopNeck <| colorPicker color
            ]

        ShirtVNeck color ->
            [ radio color Graphics.Bat
            , Picker.map ShirtVNeck <| colorPicker color
            ]


colorList : List ( String, Color )
colorList =
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


colorPicker : Color -> Picker Color
colorPicker =
    Picker.color
        { name = "Clothes Color"
        , colorToHex = Clothes.colorToHex
        , list = colorList
        , custom = Custom
        , fromCustom =
            \c ->
                case c of
                    Custom i ->
                        Just i

                    _ ->
                        Nothing
        }

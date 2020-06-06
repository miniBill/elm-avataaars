module Picker.Clothes exposing (picker)

import Avataaars.Clothes as Clothes exposing (Clothes(..), Color)
import Avataaars.Graphics as Graphics exposing (Graphics(..))
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
            [ radio Clothes.black Graphics.Bat ]

        BlazerSweater ->
            [ radio Clothes.black Graphics.Bat ]

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
    [ ( "Black", Clothes.black )
    , ( "Blue01", Clothes.blue01 )
    , ( "Blue02", Clothes.blue02 )
    , ( "Blue03", Clothes.blue03 )
    , ( "Gray01", Clothes.gray01 )
    , ( "Gray02", Clothes.gray02 )
    , ( "Heather", Clothes.heather )
    , ( "Pastel Blue", Clothes.pastelBlue )
    , ( "Pastel Green", Clothes.pastelGreen )
    , ( "Pastel Orange", Clothes.pastelOrange )
    , ( "Pastel Red", Clothes.pastelRed )
    , ( "Pastel Yellow", Clothes.pastelYellow )
    , ( "Pink", Clothes.pink )
    , ( "Red", Clothes.red )
    , ( "White", Clothes.white )
    ]


colorPicker : Color -> Picker Color
colorPicker =
    Picker.color
        { name = "Clothes Color"
        , list = colorList
        }

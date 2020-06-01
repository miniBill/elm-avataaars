module Picker.Graphics exposing (picker)

import Graphics exposing (Graphics(..))
import Picker exposing (Picker)


list : List ( String, Graphics )
list =
    [ ( "Bat", Bat )
    , ( "Cumbia", Cumbia )
    , ( "Deer", Deer )
    , ( "Diamond", Diamond )
    , ( "Hola", Hola )
    , ( "Pizza", Pizza )
    , ( "Resist", Resist )
    , ( "Selena", Selena )
    , ( "Bear", Bear )
    , ( "Skull Outline", SkullOutline )
    , ( "Skull", Skull )
    ]


picker : Graphics -> Picker Graphics
picker =
    Picker.text { name = "Graphics", list = list }

module Picker.Mouth exposing (picker)

import Mouth exposing (Mouth(..))
import Picker exposing (Picker)


list : List ( String, Mouth )
list =
    [ ( "Concerned", Concerned )
    , ( "Default", Default )
    , ( "Disbelief", Disbelief )
    , ( "Eating", Eating )
    , ( "Grimace", Grimace )
    , ( "Sad", Sad )
    , ( "Scream", ScreamOpen )
    , ( "Serious", Serious )
    , ( "Smile", Smile )
    , ( "Tongue", Tongue )
    , ( "Twinkle", Twinkle )
    , ( "Vomit", Vomit )
    ]


picker : Mouth -> Picker Mouth
picker =
    Picker.text { name = "Mouth", list = list }

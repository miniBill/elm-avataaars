module Picker.Eyes exposing (picker)

import Avataaars.Eyes as Eyes exposing (Eyes(..))
import Picker exposing (Picker)


list : List ( String, Eyes )
list =
    [ ( "Close", Close )
    , ( "Cry", Cry )
    , ( "Default", Default )
    , ( "Dizzy", Dizzy )
    , ( "Eye Roll", EyeRoll )
    , ( "Happy", Happy )
    , ( "Hearts", Hearts )
    , ( "Side", Side )
    , ( "Squint", Squint )
    , ( "Surprised", Surprised )
    , ( "Wink", Wink )
    , ( "Wink - Wacky", WinkWacky )
    ]


picker : Eyes -> Picker Eyes
picker =
    Picker.text { name = "Eyes", list = list }

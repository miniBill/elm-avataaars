module Picker.Eyebrow exposing (picker)

import Eyebrow exposing (Eyebrow(..))
import Picker exposing (Picker)


list : List ( String, Eyebrow )
list =
    [ ( "Angry", Angry )
    , ( "Angry - Natural", AngryNatural )
    , ( "Default", Default )
    , ( "Default - Natural", DefaultNatural )
    , ( "Flat - Natural", FlatNatural )
    , ( "Raised/Excited", RaisedExcited )
    , ( "Raised/Excited - Natural", RaisedExcitedNatural )
    , ( "Sad/Concerned", SadConcerned )
    , ( "Sad/Concerned - Natural", SadConcernedNatural )
    , ( "Unibrow - Natural", UnibrowNatural )
    , ( "Up/Down", UpDown )
    , ( "Up/Down - Natural", UpDownNatural )
    ]


picker : Eyebrow -> Picker Eyebrow
picker =
    Picker.text { name = "Eyebrow", list = list }

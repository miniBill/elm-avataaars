module Eyebrow exposing (Eyebrow(..), view)

import Svg exposing (Svg, g, path)
import Svg.Attributes exposing (d, fillOpacity, fillRule, id, transform)


type Eyebrow
    = Angry
    | AngryNatural
    | Default
    | DefaultNatural
    | FlatNatural
    | RaisedExcited
    | RaisedExcitedNatural
    | SadConcerned
    | SadConcernedNatural
    | UnibrowNatural
    | UpDown
    | UpDownNatural


view : Eyebrow -> Svg msg
view eyebrow =
    case eyebrow of
        Angry ->
            angry

        AngryNatural ->
            angryNatural

        Default ->
            default

        DefaultNatural ->
            defaultNatural

        FlatNatural ->
            flatNatural

        RaisedExcited ->
            raisedExcited

        RaisedExcitedNatural ->
            raisedExcitedNatural

        SadConcerned ->
            sadConcerned

        SadConcernedNatural ->
            sadConcernedNatural

        UnibrowNatural ->
            unibrowNatural

        UpDown ->
            upDown

        UpDownNatural ->
            upDownNatural


angry : Svg msg
angry =
    g [ fillOpacity "1", fillRule "nonzero" ]
        [ path [ d "M16,15 C20,9 22,10 29,15 C29,15 29,15 30,15 C34,19 37,20 40,20 C41,20 42,19 42,18 C42,17 41,16 40,16 C38,16 36,15 32,12 C32,12 32,12 31,11 C28,9 25,7 23,7 C19,7 16,8 12,13 C12,14 12,15 13,16 C14,16 15,16 16,15 Z" ] []
        , path [ d "M74,15 C78,9 80,10 87,15 C87,15 87,15 88,15 C92,19 95,20 98,20 C99,20 100,19 100,18 C100,17 99,16 98,16 C96,16 94,15 90,12 C90,12 90,12 89,11 C86,9 83,7 81,7 C77,7 74,8 70,13 C70,14 70,15 71,16 C72,16 73,16 74,15 Z", transform "translate(85, 13) scale(-1, 1) translate(-85, -13) " ] []
        ]


angryNatural : Svg msg
angryNatural =
    g [ fillOpacity "1" ]
        [ path [ d "M45,12 C45,12 45,12 45,12 M18,8 C15,8 13,10 12,12 C12,13 11,15 12,16 C12,16 12,16 13,16 C15,16 17,14 19,13 C21,13 24,13 26,14 C31,15 36,18 41,16 C41,16 46,13 44,12 C44,12 41,12 41,12 C38,12 36,11 33,10 C28,9 23,7 18,8", transform "translate(28, 12) rotate(17) translate(-28, -12) " ] []
        , path [ d "M101,12 C101,12 101,12 101,12 M74,8 C71,8 69,10 68,12 C68,13 67,15 68,16 C68,16 68,16 69,16 C71,16 73,14 75,13 C77,13 80,13 82,14 C87,15 92,18 97,16 C97,16 102,13 100,12 C100,12 97,12 97,12 C94,12 92,11 89,10 C84,9 79,7 74,8", transform "translate(84, 12) scale(-1, 1) rotate(17) translate(-84, -12) " ] []
        ]


default : Svg msg
default =
    g [ fillOpacity "1", transform "translate(12, 6)" ]
        [ path [ d "M4,11 C8,6 18,3 28,5 C29,5 30,4 30,3 C30,2 30,1 28,1 C18,-2 5,2 0,9 C-0,10 -0,11 1,12 C2,12 3,12 4,11 Z", fillRule "nonzero" ] []
        , path [ d "M62,11 C66,6 76,3 86,5 C87,5 88,4 88,3 C88,2 88,1 86,1 C76,-2 63,2 58,9 C58,10 58,11 59,12 C60,12 61,12 62,11 Z", fillRule "nonzero", transform "translate(73, 6) scale(-1, 1) translate(-73, -6) " ] []
        ]


defaultNatural : Svg msg
defaultNatural =
    g [ fillOpacity "1" ]
        [ path [ d "M26,6 C20,7 11,12 12,18 C12,18 12,18 12,18 C15,15 34,10 41,11 C42,11 42,10 42,10 C38,6 31,6 26,6", transform "translate(27, 12) rotate(5) translate(-27, -12) " ] []
        , path [ d "M85,6 C79,7 70,12 71,18 C71,18 71,18 71,18 C74,15 93,10 100,11 C101,11 101,10 101,10 C97,6 90,6 85,6", transform "translate(86, 12) scale(-1, 1) rotate(5) translate(-86, -12) " ] []
        ]


flatNatural : Svg msg
flatNatural =
    g [ fillOpacity "1" ]
        [ path [ d "M39,11 C34,11 29,11 24,11 C20,11 16,11 12,13 C12,13 8,15 8,16 C8,17 12,18 13,18 C16,19 20,19 24,19 C28,18 33,18 38,18 C41,18 45,17 47,13 C47,12 47,10 46,9 C46,8 46,8 45,8 C44,9 41,10 39,11", transform "translate(28, 14) rotate(2) translate(-28, -14) " ] []
        , path [ d "M96,11 C91,11 86,11 81,11 C77,11 73,11 69,13 C69,13 65,15 65,16 C65,17 69,18 70,18 C73,19 77,19 81,19 C85,18 90,18 95,18 C98,18 102,17 104,13 C104,12 104,10 103,9 C103,8 103,8 102,8 C101,9 98,10 96,11", transform "translate(85, 14) scale(-1, 1) rotate(2) translate(-85, -14) " ] []
        ]


raisedExcited : Svg msg
raisedExcited =
    g [ fillOpacity "1", transform "translate(12, 0)" ]
        [ path [ d "M4,17 C5,8 18,1 27,5 C28,6 29,5 30,4 C30,3 30,2 29,2 C17,-4 2,4 0,17 C-0,18 1,19 2,19 C3,19 4,18 4,17 Z", fillRule "nonzero" ] []
        , path [ d "M62,17 C63,8 76,1 85,5 C86,6 87,5 88,4 C88,3 88,2 87,2 C75,-4 60,4 58,17 C58,18 59,19 60,19 C61,19 62,18 62,17 Z", fillRule "nonzero", transform "translate(73, 9) scale(-1, 1) translate(-73, -9) " ] []
        ]


raisedExcitedNatural : Svg msg
raisedExcitedNatural =
    g [ fillOpacity "1" ]
        [ path [ d "M23,2 L24,1 C29,-1 37,-0 42,2 C42,3 42,3 41,3 C26,2 16,12 13,18 C13,18 13,18 12,18 C10,13 17,4 23,2 Z", id "Eye-Browse-Reddit" ] []
        , path [ d "M81,2 L82,1 C87,-1 95,-0 100,2 C100,3 100,3 99,3 C84,2 74,12 71,18 C71,18 71,18 70,18 C68,13 75,4 81,2 Z", id "Eye-Browse-Reddit", transform "translate(85, 9) scale(-1, 1) translate(-85, -9) " ] []
        ]


sadConcerned : Svg msg
sadConcerned =
    g [ fillOpacity "1", fillRule "nonzero" ]
        [ path [ d "M16,19 C17,11 30,5 39,9 C40,9 41,9 42,8 C42,7 42,6 41,5 C29,1 14,8 12,19 C12,20 13,21 14,21 C15,21 16,20 16,19 Z", transform "translate(27, 13) scale(-1, -1) translate(-27, -13) " ] []
        , path [ d "M74,19 C75,11 88,5 97,9 C98,9 99,9 100,8 C100,7 100,6 99,5 C87,1 72,8 70,19 C70,20 71,21 72,21 C73,21 74,20 74,19 Z", transform "translate(85, 13) scale(1, -1) translate(-85, -13) " ] []
        ]


sadConcernedNatural : Svg msg
sadConcernedNatural =
    g [ fillOpacity "1" ]
        [ path [ d "M23,6 L24,5 C29,3 37,4 42,6 C42,7 42,7 41,7 C26,6 16,16 13,22 C13,22 13,22 12,22 C10,17 17,8 23,6 Z", transform "translate(27, 13) scale(-1, -1) translate(-27, -13) " ] []
        , path [ d "M81,6 L82,5 C87,3 95,4 100,6 C100,7 100,7 99,7 C84,6 74,16 71,22 C71,22 71,22 70,22 C68,17 75,8 81,6 Z", transform "translate(85, 13) scale(1, -1) translate(-85, -13) " ] []
        ]


unibrowNatural : Svg msg
unibrowNatural =
    g [ id "Eyebrow/Natural/Unibrow-Natural", fillOpacity "1" ]
        [ path [ d "M57,12 C57,12 57,12 57,12 M59,15 C61,16 64,17 66,17 C72,18 78,16 84,15 C90,14 96,13 101,17 C101,17 102,17 103,18 C103,18 104,18 104,18 C105,15 98,9 96,8 C90,5 81,8 74,9 C71,10 67,10 63,11 C62,12 61,12 59,12 C59,12 59,12 59,12 C58,12 56,15 58,16 C59,16 59,15 59,15 Z", id "Kahlo", transform "translate(81, 13) rotate(-2) translate(-81, -13) " ] []
        , path [ d "M55,12 C55,12 55,12 55,12 M16,8 C22,5 31,8 38,9 C41,10 45,10 49,11 C50,12 52,12 53,12 C54,12 54,13 54,14 C52,16 48,17 46,17 C40,18 34,16 28,15 C22,14 16,13 11,17 C11,17 10,17 9,18 C9,18 8,18 8,18 C7,15 14,9 16,8 Z M55,11 C56,11 58,15 56,16 C53,16 54,11 55,11 Z", id "Frida", transform "translate(32, 13) rotate(2) translate(-32, -13) " ] []
        ]


upDown : Svg msg
upDown =
    g [ id "Eyebrow/Outline/Up-Down", fillOpacity "1", fillRule "nonzero" ]
        [ path [ d "M16,14 C20,8 30,5 39,8 C40,8 42,8 42,7 C42,5 42,4 41,4 C29,0 18,4 12,12 C12,13 12,14 13,15 C14,15 15,15 16,14 Z", id "Eyebrow" ] []
        , path [ d "M74,21 C78,16 88,13 98,15 C99,15 100,14 100,13 C100,12 100,11 98,11 C88,8 75,12 70,19 C70,20 70,21 71,22 C72,22 73,22 74,21 Z", transform "translate(85, 16) scale(-1, 1) translate(-85, -16) " ] []
        ]


upDownNatural : Svg msg
upDownNatural =
    g [ id "Eyebrow/Natural/Up-Down-Natural", fillOpacity "1" ]
        [ path [ d "M23,2 L24,1 C29,-1 37,-0 42,2 C42,3 42,3 41,3 C26,2 16,12 13,18 C13,18 13,18 12,18 C10,13 17,4 23,2 Z", id "Eye-Browse-Reddit" ] []
        , path [ d "M87,12 C92,12 102,17 101,22 C101,23 101,23 101,22 C98,20 79,17 72,18 C71,18 71,18 71,17 C75,13 81,12 87,12 Z", transform "translate(86, 17) rotate(5) translate(-86, -17) " ] []
        ]

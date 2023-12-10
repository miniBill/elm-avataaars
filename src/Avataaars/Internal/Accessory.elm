module Avataaars.Internal.Accessory exposing (view)

import Avataaars.Accessory exposing (Accessory(..))
import Avataaars.Internal.Matrices exposing (matrixDot1, matrixDot16, matrixDot2)
import Svg exposing (Svg, defs, feMerge, feMergeNode, feOffset, filter, g, linearGradient, path, stop, text, use)
import Svg.Attributes as A exposing (d, dx, dy, fill, fillOpacity, fillRule, filterUnits, height, id, in_, offset, result, stopColor, stopOpacity, strokeWidth, style, transform, width, x, x1, x2, xlinkHref, y, y1, y2)


view : Accessory -> Svg msg
view accessory =
    case accessory of
        Blank ->
            text ""

        Kurt ->
            kurt

        Prescription01 ->
            prescription01

        Prescription02 ->
            prescription02

        Round ->
            round

        Sunglasses ->
            sunglasses

        Wayfarers ->
            wayfarers


kurt : Svg msg
kurt =
    g []
        [ defs []
            [ filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "kurtFilter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot16
                , standardMerge
                ]
            ]
        , g [ A.filter "url(#kurtFilter)", transform "translate(66.5, 86)", strokeWidth "1", fillRule "nonzero" ]
            [ path [ d "M66,11 C55,11 53,2 31,1 C8,-0 1,6 1,11 C1,15 -0,27 14,40 C29,55 44,50 50,45 C55,42 61,21 66,21 C71,22 77,42 82,45 C88,50 103,55 118,40 C132,27 131,15 131,11 C131,6 124,-0 101,1 C79,2 77,11 66,11 Z", fill "#F4F4F4" ] []
            , path [ d "M55,21 C56,14 42,6 28,6 C14,6 12,15 12,19 C11,27 20,45 36,45 C52,44 55,27 55,21 Z", fill "#2F383B" ] []
            , path [ d "M120,21 C121,14 107,6 93,6 C79,6 77,15 77,19 C77,27 85,45 101,45 C117,44 120,27 120,21 Z", fill "#2F383B", transform "translate(99, 25) scale(-1, 1) translate(-99, -25) " ] []
            ]
        ]


prescription01 : Svg msg
prescription01 =
    g []
        [ defs []
            [ filter [ x "-0.8%", y "-2.4%", width "101.5%", height "109.8%", filterUnits "objectBoundingBox", id "prescription01Filter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot2
                , standardMerge
                ]
            ]
        , g [ transform "translate(69, 93)", strokeWidth "1", fill "#D6EAF2", A.filter "url(#prescription01Filter)" ]
            [ path [ d "M46,7 C49,7 50,8 50,10 C51,13 50,15 50,18 C49,22 48,25 45,28 C44,30 42,31 40,32 C39,32 38,32 37,33 C36,33 34,33 35,33 C32,33 27,33 24,31 C21,28 18,24 17,20 C17,17 15,11 18,9 C20,7 46,7 46,7 L46,7 Z M22,0 C17,1 13,2 10,7 C6,17 14,32 23,36 C34,41 47,36 52,26 C55,21 57,13 57,8 C57,0 52,0 46,0 L22,0 Z" ] []
            , path [ d "M80,7 C77,7 76,8 76,10 C75,13 76,15 76,18 C77,22 78,25 81,28 C82,30 84,31 86,32 C87,32 88,32 89,33 C90,33 92,33 91,33 C94,33 99,33 102,31 C105,28 108,24 109,20 C109,17 111,11 108,9 C106,7 80,7 80,7 L80,7 Z M104,0 C109,1 113,2 115,7 C120,17 112,32 103,36 C92,41 79,36 74,26 C70,21 69,13 69,8 C69,0 74,0 80,0 L104,0 Z" ] []
            , path [ d "M13,5 C10,5 6,5 3,7 C-1,8 -1,12 3,12 C5,12 7,12 9,12 C10,11 12,12 14,11 C17,10 16,5 13,5" ] []
            , path [ d "M113,5 C116,5 120,5 123,7 C127,8 127,12 123,12 C121,12 119,12 117,12 C116,11 113,12 112,11 C109,10 109,5 113,5" ] []
            , path [ d "M73,7 C71,5 66,3 63,3 C60,3 55,5 53,7 C52,8 52,10 54,10 C56,11 58,10 59,9 C61,8 65,8 67,9 C68,10 70,11 72,10 C74,10 74,8 73,7" ] []
            ]
        ]


prescription02 : Svg msg
prescription02 =
    g []
        [ defs []
            [ filter [ x "-0.8%", y "-2.4%", width "101.5%", height "109.8%", filterUnits "objectBoundingBox", id "prescription02Filter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot2
                , standardMerge
                ]
            ]
        , g [ transform "translate(68, 92)", strokeWidth "1", fill "#252C2F", A.filter "url(#prescription02Filter)" ]
            [ path [ d "M34,41 L31,41 C17,41 9,33 9,20.5 C9,10 11,0 33,0 L35,0 C57,0 59,10 59,20.5 C59,33 49,41 34,41 Z M32,6 C13,6 13,13 13,22 C13,29 16,37 31,37 L34,37 C46,37 55,31 55,22 C55,13 55,6 36,6 L32,6 Z", fillRule "nonzero" ] []
            , path [ d "M96,41 L93,41 C79,41 71,33 71,20.5 C71,10 73,0 95,0 L97,0 C119,0 121,10 121,20.5 C121,33 111,41 96,41 Z M94,6 C75,6 75,13 75,22 C75,29 78,37 93,37 L96,37 C108,37 117,31 117,22 C117,13 117,6 98,6 L94,6 Z", fillRule "nonzero" ] []
            , path [ d "M3,6 C4,5 11,0 33,0 C50,0 54,2 60,5 L60,5 C61,5 63,6 65,6 C67,6 69,5 70,5 C76,2 83,0 97.5,0 C119,0 126,5 127,6 C129,6 130,7 130,9 L130,12 C130,13 129,14 127,14 C127,14 120,14 120,17 C120,20 118,13 118,12 L118,9 C115,7 108,5 97.5,5 C86,5 80,7 75,9 L75,9 L75,11 L73,16 L70,15 C70,15 69,15 68,15 C66,14 64,14 62,15 C62,15 61,15 60,15 L58,17 L55,11 L55,9 L55,9 C51,7 47,5 33,5 C22,5 15,7 12,9 L12,12 C12,13 9,20 9,17 C9,14 3,14 3,14 C1,14 0,13 0,12 L0,9 C0,7 1,6 3,6 Z", fillRule "nonzero" ] []
            ]
        ]


round : Svg msg
round =
    g [ transform "translate(61, 85)" ]
        [ defs []
            [ path [ d "M80,16 C84,8 93,3 102,3 C111,3 119,8 123,15 C123,15 123,15 123.5,15 L131.5,15 C133,15 134,16 134,17.5 C134,19 133,20 131.5,20 L125,20 C126,22 126,25 126,27 C126,40 115,51 102,51 C89,51 78,40 78,27 C78,26 78,24 78,23 C78,18 75,15 71,15 C67,15 64,18 63,22 C64,23 64,25 64,27 C64,40 53,51 40,51 C27,51 16,40 16,27 C16,25 16,22 17,20 L10.5,20 C9,20 8,19 8,17.5 C8,16 9,15 10.5,15 L10.5,15 L18.5,15 C19,15 19,15 19,15 C23,8 31,3 40,3 C49,3 57,8 61,16 C63,13 67,11 71,11 C75,11 78,13 80,16 Z M40,47 C51,47 60,38 60,27 C60,16 51,7 40,7 C29,7 20,16 20,27 C20,38 29,47 40,47 Z M102,47 C113,47 122,38 122,27 C122,16 113,7 102,7 C91,7 82,16 82,27 C82,38 91,47 102,47 Z", id "roundPath" ] []
            , filter [ x "-0.8%", y "-2.1%", width "101.6%", height "108.3%", filterUnits "objectBoundingBox", id "roundFilter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot1
                ]
            ]
        , use [ fill "black", A.filter "url(#roundFilter)", xlinkHref "#roundPath" ] []
        , use [ fill "#252C2F", fillRule "evenodd", xlinkHref "#roundPath" ] []
        ]


sunglasses : Svg msg
sunglasses =
    g []
        [ defs []
            [ filter [ x "-0.8%", y "-2.6%", width "101.6%", height "110.5%", filterUnits "objectBoundingBox", id "sunglassesFilter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot1
                , standardMerge
                ]
            , path [ d "M47,6 C50,6 51,7 51,9 C52,12 51,15 51,18 C50,22 49,26 46,29 C44,30 42,32 40,32 C39,33 38,33 37,33 C37,34 34,34 35,34 C31,34 27,34 24,32 C20,29 17,24 16,20 C16,17 14,10 17,8 C20,6 47,6 47,6 L47,6 Z", id "sunglassesPath" ] []
            , path [ d "M79,6 C76,6 75,7 75,9 C74,12 75,15 75,18 C76,22 77,26 80,29 C82,30 84,32 86,32 C87,33 88,33 89,33 C89,34 92,34 90,34 C95,34 99,34 102,32 C106,29 109,24 110,20 C110,17 112,10 109,8 C106,6 79,6 79,6 L79,6 Z", id "sunglassesPath2" ] []
            , sunglassGradient
            ]
        , g [ A.filter "url(#sunglassesFilter)", transform "translate(69, 93)", strokeWidth "1", fill "#252C2F" ]
            [ use [ fillOpacity "0.7", fill "#000000", xlinkHref "#sunglassesPath" ] []
            , use [ fill "url(#sunglassGradient)", style "mix-blend-mode: screen", xlinkHref "#sunglassesPath" ] []
            , use [ fillOpacity "0.7", fill "#000000", xlinkHref "#sunglassesPath2" ] []
            , use [ fill "url(#sunglassGradient)", style "mix-blend-mode: screen", xlinkHref "#sunglassesPath2" ] []
            , path [ d "M46,7 C49,7 50,8 50,10 C51,13 50,15 50,18 C49,22 48,25 45,28 C44,30 42,31 40,32 C39,32 38,32 37,33 C36,33 34,33 35,33 C32,33 27,33 24,31 C21,28 18,24 17,20 C17,17 15,11 18,9 C20,7 46,7 46,7 L46,7 Z M22,0 C17,1 13,2 10,7 C6,17 14,32 23,36 C34,41 47,36 52,26 C55,21 57,13 57,8 C57,0 52,0 46,0 L22,0 Z" ] []
            , path [ d "M80,7 C77,7 76,8 76,10 C75,13 76,15 76,18 C77,22 78,25 81,28 C82,30 84,31 86,32 C87,32 88,32 89,33 C90,33 92,33 91,33 C94,33 99,33 102,31 C105,28 108,24 109,20 C109,17 111,11 108,9 C106,7 80,7 80,7 L80,7 Z M104,0 C109,1 113,2 115,7 C120,17 112,32 103,36 C92,41 79,36 74,26 C70,21 69,13 69,8 C69,0 74,0 80,0 L104,0 Z" ] []
            , path [ d "M13,5 C10,5 6,5 3,7 C-1,8 -1,12 3,12 C5,12 7,12 9,12 C10,11 12,12 14,11 C17,10 16,5 13,5" ] []
            , path [ d "M113,5 C116,5 120,5 123,7 C127,8 127,12 123,12 C121,12 119,12 117,12 C116,11 113,12 112,11 C109,10 109,5 113,5" ] []
            , path [ d "M73,7 C71,5 66,3 63,3 C60,3 55,5 53,7 C52,8 52,10 54,10 C56,11 58,10 59,9 C61,8 65,8 67,9 C68,10 70,11 72,10 C74,10 74,8 73,7" ] []
            ]
        ]


wayfarers : Svg msg
wayfarers =
    g [ transform "translate(61, 85)", strokeWidth "1" ]
        [ defs []
            [ filter [ x "-0.8%", y "-2.4%", width "101.6%", height "109.8%", filterUnits "objectBoundingBox", id "wayfarersFilter" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , matrixDot2
                , standardMerge
                ]
            , sunglassGradient
            , path [ d "M45,18 C45,27 37,35 23,35 L20,35 C6,35 1,27 1,18 L1,18 C1,8 2,0 21,0 L24,0 C44,0 45,8 45,18 L45,18 Z", id "wayfarersPath" ] []
            , path [ d "M106,18 C106,27 98,35 84,35 L82,35 C68,35 62,27 62,18 L62,18 C62,8 64,0 83,0 L86,0 C105,0 106,8 106,18 L106,18 Z", id "wayfarersPath2" ] []
            ]
        , g [ A.filter "url(#wayfarersFilter)", transform "translate(7, 7)" ]
            [ g [ transform "translate(11, 3)" ]
                [ use [ fillOpacity "0.7", fill "#000000", xlinkHref "#wayfarersPath" ] []
                , use [ fill "url(#sunglassGradient)", xlinkHref "#wayfarersPath" ] []
                , use [ fillOpacity "0.7", fill "#000000", xlinkHref "#wayfarersPath2" ] []
                , use [ fill "url(#sunglassGradient)", xlinkHref "#wayfarersPath2" ] []
                ]
            , path [ d "M34,41 L31,41 C17,41 9,33 9,20.5 C9,10 11,0 32,0 L35,0 C57,0 59,10 59,20.5 C59,33 48,41 34,41 Z M32,6 C15,6 15,12 15,20.5 C15,27 17,35 31,35 L34,35 C45,35 53,29 53,20.5 C53,12 53,6 35,6 L32,6 Z", fill "#252C2F" ] []
            , path [ d "M95,41 L93,41 C79,41 70,33 70,20.5 C70,10 72,0 94,0 L97,0 C118,0 120,10 120,20.5 C120,33 110,41 95,41 Z M94,6 C76,6 76,12 76,20.5 C76,27 79,35 93,35 L95,35 C107,35 114,29 114,20.5 C114,12 114,6 97,6 L94,6 Z", fill "#252C2F" ] []
            , path [ d "M3,6 C4,5 11,0 32,0 C50,0 54,2 59,5 L60,5 C60,5 62,6 65,6 C67,6 69,5 69,5 C76,2 82,0 97,0 C118,0 125,5 126,6 C128,6 129,7 129,9 L129,12 C129,13 128,15 126,15 C126,15 120,15 120,18 C120,20.5 117,13 117,12 L117,9 C114,7 107,6 97,6 C85,6 79,7 74,9 L74,9 L72,10 L74,11 L72,17 L69,16 C69,15 68,15 68,15 C66,15 64,14 62,15 C61,15 61,15 60,15 L57,17 L55,12 L57,10 L57,10 L55,9 L55,9 C51,7 47,6 32,6 C22,6 15,7 12,9 L12,12 C12,13 9,20.5 9,18 C9,15 3,15 3,15 C1,15 0,13 0,12 L0,9 C0,7 1,6 3,6 Z", fill "#252C2F" ] []
            ]
        ]


standardMerge : Svg msg
standardMerge =
    feMerge []
        [ feMergeNode [ in_ "shadowMatrixOuter1" ] []
        , feMergeNode [ in_ "SourceGraphic" ] []
        ]


sunglassGradient : Svg msg
sunglassGradient =
    linearGradient [ x1 "50%", y1 "0%", x2 "50%", y2 "71%", id "sunglassGradient" ]
        [ stop [ stopColor "#FFFFFF", stopOpacity "0.5", offset "0%" ] []
        , stop [ stopColor "#000000", stopOpacity "0.5", offset "100%" ] []
        ]

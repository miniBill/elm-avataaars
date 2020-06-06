module Avataaars.Internal.Mouth exposing (view)

import Avataaars.Internal.Matrices exposing (matrixDot1)
import Avataaars.Mouth exposing (Mouth(..))
import Svg exposing (Svg, circle, defs, feComposite, feOffset, filter, g, mask, path, rect, use)
import Svg.Attributes as A exposing (cx, cy, d, dx, dy, fill, fillOpacity, fillRule, filterUnits, height, id, in2, in_, k2, k3, operator, r, result, rx, strokeWidth, transform, width, x, xlinkHref, y)


view : Mouth -> Svg msg
view mouth =
    case mouth of
        Concerned ->
            concerned

        Default ->
            default

        Disbelief ->
            disbelief

        Eating ->
            eating

        Grimace ->
            grimace

        Sad ->
            sad

        ScreamOpen ->
            screamOpen

        Serious ->
            serious

        Smile ->
            smile

        Tongue ->
            tongue

        Twinkle ->
            twinkle

        Vomit ->
            vomit


concerned : Svg msg
concerned =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ path [ d "M35,15 C36,25 44,32 54,32 C64,32 72,25 73,15 C73,14 72,13 71,13 C56,13 45,13 37,13 C36,13 35,14 35,15 Z", id "concernedPath" ] [] ]
        , mask [ id "concernedMask", fill "white" ]
            [ use [ xlinkHref "#concernedPath", transform "translate(54, 23) scale(1, -1) translate(-54, -23) " ] [] ]
        , use [ transform "translate(54, 23) scale(1, -1) translate(-54, -23) ", xlinkHref "#concernedPath" ] []
        , rect [ fill "#FFFFFF", A.mask "url(#concernedMask)", x "39", y "2", width "31", height "16", rx "5" ] []
        , g [ strokeWidth "1", A.mask "url(#concernedMask)", fill "#FF4F6D" ]
            [ circle [ cx "49", cy "35", r "11" ] []
            , circle [ cx "59", cy "35", r "11" ] []
            ]
        ]


default : Svg msg
default =
    path [ d "M40,15 C40,23 46,29 54,29 L54,29 C62,29 68,23 68,15", transform "translate(2, 52)" ] []


disbelief : Svg msg
disbelief =
    path [ d "M40,15 C40,23 46,29 54,29 L54,29 C62,29 68,23 68,15", transform "translate(56, 74) scale(1, -1) translate(-54, -22) " ] []


eating : Svg msg
eating =
    g []
        [ path [ d "M16,10 C16,5 12,1 6,0 C10,2 12,5 12,10 C12,15 7,20 0,20 C0,20 0,20 0,20 L0,20 C1,21 3,21 4,21 C10,21 14,18 16,14 C18,16 22,17 26,17 C30,17 34,16 36,14 C38,18 42,21 48,21 C49,21 51,21 52,20 L52,20 C52,20 52,20 52,20 C45,20 40,15 40,10 C40,5 42,2 46,0 C40,1 36,5 36,10 C33,12 30,13 26,13 C22,13 19,12 16,10 Z", transform "translate(30, 58)" ] []
        , circle [ fillOpacity "0.2", fill "#FF4646", cx "19", cy "67", r "9" ] []
        , circle [ fillOpacity "0.2", fill "#FF4646", cx "93", cy "67", r "9" ] []
        ]


grimace : Svg msg
grimace =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ rect [ id "grimacePath", x "24", y "9", width "60", height "22", rx "11" ] [] ]
        , rect [ fill "#000000", x "22", y "7", width "64", height "26", rx "13" ] []
        , mask [ id "grimaceMask", fill "white" ]
            [ use [ xlinkHref "#grimacePath" ] [] ]
        , use [ fill "#FFFFFF", xlinkHref "#grimacePath" ] []
        , path [ d "M71,22 L62,22 L62,34 L58,34 L58,22 L49,22 L49,34 L45,34 L45,22 L36,22 L36,34 L32,34 L32,22 L24,22 L24,18 L32,18 L32,6 L36,6 L36,18 L45,18 L45,6 L49,6 L49,18 L58,18 L58,6 L62,6 L62,18 L71,18 L71,6 L75,6 L75,18 L84,18 L84,22 L75,22 L75,34 L71,34 L71,22 Z", fill "#E6E6E6", A.mask "url(#grimaceMask)" ] []
        ]


sad : Svg msg
sad =
    path [ d "M40,17 C41,24 47,28 54,28 C61,28 67,24 68,17 C68,16 67,16 67,16 C61,19 57,20 54,20 C51,20 47,19 42,16 C41,16 40,16 40,17 Z", transform "translate(56, 74) scale(1, -1) translate(-54, -22) " ] []


screamOpen : Svg msg
screamOpen =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ path [ d "M34,15 C35,29 38,41 54,41 C70,41 73,29 74,15 C74,14 73,13 72,13 C65,13 63,15 54,15 C45,15 41,13 36,13 C35,13 34,14 34,15 Z", id "screamPath" ] [] ]
        , mask [ id "screamMask", fill "white" ]
            [ use [ xlinkHref "#screamPath", transform "translate(54, 27) scale(1, -1) translate(-54, -27) " ] [] ]
        , use [ transform "translate(54, 27) scale(1, -1) translate(-54, -27) ", xlinkHref "#screamPath" ] []
        , rect [ fill "#FFFFFF", A.mask "url(#screamMask)", x "39", y "2", width "31", height "16", rx "5" ] []
        , g [ strokeWidth "1", A.mask "url(#screamMask)", fill "#FF4F6D" ]
            [ circle [ cx "49", cy "43", r "11" ] []
            , circle [ cx "59", cy "43", r "11" ] []
            ]
        ]


serious : Svg msg
serious =
    rect [ x "44", y "70", width "24", height "6", rx "3" ] []


smile : Svg msg
smile =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ path [ d "M35,15 C36,25 44,32 54,32 C64,32 72,25 73,15 C73,14 72,13 71,13 C56,13 45,13 37,13 C36,13 35,14 35,15 Z", id "smilePath" ] [] ]
        , mask [ id "smileMask", fill "white" ]
            [ use [ xlinkHref "#smilePath" ] [] ]
        , use [ xlinkHref "#smilePath" ] []
        , rect [ fill "#FFFFFF", A.mask "url(#smileMask)", x "39", y "2", width "31", height "16", rx "5" ] []
        , g [ strokeWidth "1", A.mask "url(#smileMask)", fill "#FF4F6D" ]
            [ g [ transform "translate(38, 24)" ]
                [ circle [ cx "11", cy "11", r "11" ] []
                , circle [ cx "21", cy "11", r "11" ] []
                ]
            ]
        ]


tongue : Svg msg
tongue =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ path [ d "M29,16 C30,25 41,33 54,33 C67,33 78,25 79,15 C79,14 79,13 77,13 C57,13 42,13 31,13 C29,13 29,14 29,16 Z", id "tonguePath" ] [] ]
        , mask [ id "tongueMask", fill "white" ]
            [ use [ xlinkHref "#tonguePath" ] [] ]
        , use [ fill "#000000", xlinkHref "#tonguePath" ] []
        , rect [ fill "#FFFFFF", A.mask "url(#tongueMask)", x "39", y "2", width "31", height "16", rx "5" ] []
        , path [ d "M66,24 C66,24 66,24 66,24 L66,33 C66,39 61,44 55,44 L54,44 C48,44 43,39 43,33 L43,24 L43,24 C43,24 43,24 43,24 C43,24 43,24 43,23.5 C43,22 46,20 49.5,20 C52,20 53,20 54.5,21 C56,20 57,20 59.5,20 C63,20 66,22 66,23.5 C66,24 66,24 66,24 Z", fill "#FF4F6D" ] []
        ]


twinkle : Svg msg
twinkle =
    path [ d "M40,16 C40,21 46,25 54,25 C62,25 68,21 68,16 C68,15 67,14 66,14 C65,14 64,15 64,16 C63,19 60,21 54,21 C48,21 45,19 44,16 C44,15 43,14 42,14 C41,14 40,15 40,16 Z", transform "translate(2, 52)" ] []


vomit : Svg msg
vomit =
    g [ transform "translate(2, 52)" ]
        [ defs []
            [ path [ d "M34,13 C35,23 38,32 54,32 C70,32 73,23 74,13 C74,12 73,11 72,11 C65,11 63,12 54,12 C45,13 41,11 36,11 C35,11 34,12 34,13 Z", id "vomitPath1" ] []
            , path [ d "M60,36 L60,36 C60,39 63,42 66,42 C69,42 72,39 72,36 L72,35 L72,31 C72,28 69,25 66,25 L66,25 L42,25 L42,25 C39,25 36,28 36,31 L36,31 L36,35 L36,38 C36,41 39,44 42,44 C45,44 48,41 48,38 L48,36 L48,36 C49,33 51,31 54,31 C57,31 59,33 60,36 Z", id "vomitPath2" ] []
            , filter [ x "-1.4%", y "-2.6%", width "102.8%", height "105.3%", filterUnits "objectBoundingBox", id "vomitFilter" ]
                [ feOffset [ dx "0", dy "-1", in_ "SourceAlpha", result "shadowOffsetInner1" ] []
                , feComposite [ in_ "shadowOffsetInner1", in2 "SourceAlpha", operator "arithmetic", k2 "-1", k3 "1", result "shadowInnerInner1" ] []
                , matrixDot1
                ]
            ]
        , mask [ id "vomitMask", fill "white" ]
            [ use [ xlinkHref "#vomitPath1", transform "translate(54, 21) scale(1, -1) translate(-54, -21) " ] [] ]
        , use [ fill "#000000", fillRule "evenodd", transform "translate(54, 21) scale(1, -1) translate(-54, -21) ", xlinkHref "#vomitPath1" ] []
        , rect [ fill "#FFFFFF", fillRule "evenodd", A.mask "url(#vomitMask)", x "39", y "0", width "31", height "16", rx "5" ] []
        , use [ fill "#88C553", fillRule "evenodd", xlinkHref "#vomitPath2" ] []
        , use [ fill "black", A.filter "url(#vomitFilter)", xlinkHref "#vomitPath2" ] []
        ]

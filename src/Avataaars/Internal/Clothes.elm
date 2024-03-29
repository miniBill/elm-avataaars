module Avataaars.Internal.Clothes exposing (view)

import Avataaars.Clothes exposing (Clothes(..), Color)
import Avataaars.Graphics exposing (Graphics)
import Avataaars.Internal.Graphics as Graphics
import Svg exposing (Svg, circle, ellipse, g, mask, path, rect, use)
import Svg.Attributes as A exposing (cx, cy, d, fill, fillOpacity, height, id, opacity, r, rx, ry, strokeWidth, transform, width, x, xlinkHref, y)


view : Clothes -> Svg msg
view clothes =
    g [ transform "translate(0, 170)" ] <|
        case clothes of
            BlazerShirt ->
                blazerShirt

            BlazerSweater ->
                blazerSweater

            CollarSweater color ->
                collarSweater color

            GraphicShirt color graphics ->
                graphicsShirt color graphics

            Hoodie color ->
                hoodie color

            Overall color ->
                overall color

            ShirtCrewNeck color ->
                shirtCrewNeck color

            ShirtScoopNeck color ->
                shirtScoopNeck color

            ShirtVNeck color ->
                shirtVNeck color


blazerShirt : List (Svg msg)
blazerShirt =
    [ g [ transform "translate(32, 29)" ]
        [ path [ d "M134,0 C171,3 200,34 200,72 L200,81 L0,81 L0,72 C0,34 30,3 67,0 C67,1 67,1 67,1 C67,13 82,23 101,23 C119,23 134,13 134,1 C134,1 134,1 134,0 Z", fill "#262E33" ] []
        , path [ d "M69,1 C31,3 0,34 0,73 L0,73 L0,82 L69,82 C66,70 64,56 64,41 C64,26 66,13 69,1 Z M132,82 L200,82 L200,73 C200,35 170,3 132,1 C135,13 137,26 137,41 C137,56 135,70 132,82 Z", fill "#3A4C5A" ] []
        , path [ d "M149,58 L159,51 L159,51 C160,50 162,50 163,51 L170,56 L149,58 Z", fill "#E6E6E6" ] []
        , path [ d "M69,0 C65,19 67,47 74,82 L58,82 L44,46 L50,37 L44,31 L63,1 C65,0 67,0 69,0 Z", fill "#2F4351" ] []
        , path [ d "M151,0 C147,19 149,47 156,82 L140,82 L126,46 L132,37 L126,31 L145,1 C147,0 149,0 151,0 Z", fill "#2F4351", transform "translate(141, 41) scale(-1, 1) translate(-141, -41) " ] []
        ]
    ]


blazerSweater : List (Svg msg)
blazerSweater =
    [ g [ transform "translate(32, 28)" ]
        [ path [ d "M105,29 L104,29 L104,29 C64,29 32,61 32,101 L32,110 L232,110 L232,101 C232,61 200,29 160,29 L160,29 L159,29 C159,30 159,31 159,32 C159,46 147,57 132,57 C117,57 105,46 105,32 C105,31 105,30 105,29 Z", transform "translate(-32, -28)", fill "#262E33" ] []
        , path [ d "M69,1 C31,3 0,34 0,73 L0,82 L69,82 C66,70 64,56 64,41 C64,26 66,13 69,1 Z M132,82 L200,82 L200,73 C200,35 170,3 132,1 C135,13 137,26 137,41 C137,56 135,70 132,82 Z", fill "#3A4C5A" ] []
        , path [ d "M149,58 L159,51 L159,51 C160,50 162,50 163,51 L170,56 L149,58 Z", fill "#E6E6E6" ] []
        , path [ d "M69,0 C65,19 67,47 74,82 L58,82 L44,46 L50,37 L44,31 L63,1 C65,0 67,0 69,0 Z", fill "#2F4351" ] []
        , path [ d "M151,0 C147,19 149,47 156,82 L140,82 L126,46 L132,37 L126,31 L145,1 C147,0 149,0 151,0 Z", transform "translate(141, 41) scale(-1, 1) translate(-141, -41) ", fill "#2F4351" ] []
        ]
    , path [ d "M156,22 C163,26 167,33 167,40 C167,47 163,54 156,59 L150,54 L145,54 L146,51 L146,51 C152,48 156,43 156,37 L156,22 Z M108,22 C101,26 97,33 97,40 C97,47 101,54 108,59 L114,54 L119,54 L118,51 L118,51 C112,48 108,43 108,37 L108,22 Z", fill "#F2F2F2" ] []
    ]


collarSweater : Color -> List (Svg msg)
collarSweater color =
    [ mask [ id "collarSweaterMask", fill "white" ]
        [ path [ d "M105,29 L104,29 L104,29 C64,29 32,61 32,101 L32,110 L232,110 L232,101 C232,61 200,29 160,29 L160,29 L159,29 C159,30 159,31 159,32 C159,46 147,57 132,57 C117,57 105,46 105,32 C105,31 105,30 105,29 Z" ] [] ]
    , use [ fill "#E6E6E6", xlinkHref "#sweaterPath" ] []
    , colors { maskId = "collarSweaterMask", color = color }
    , path [ d "M156,22 C162,27 166,33 166,40 C166,47 162,54 155,58 L150,54 L145,54 L146,51 L146,51 C152,48 156,43 156,37 L156,22 Z M108,22 C101,26 97,33 97,40 C97,47 101,54 108,59 L114,54 L119,54 L118,51 L118,51 C112,48 108,43 108,37 L108,22 Z", fill "#F2F2F2" ] []
    ]


graphicsShirt : Color -> Graphics -> List (Svg msg)
graphicsShirt color graphics =
    [ mask [ id "graphicsShirtMask", fill "white" ]
        [ path [ d "M166,29 C203,32 232,63 232,101 L232,110 L32,110 L32,101 C32,63 62,32 99,29 C99,30 99,31 99,33 C99,44 114,54 133,54 C151,54 166,44 166,33 C166,31 166,30 166,29 Z" ] [] ]
    , colors { maskId = "graphicsShirtMask", color = color }
    , Graphics.view graphics
    ]


hoodie : Color -> List (Svg msg)
hoodie color =
    [ mask [ id "hoodieMask", fill "white" ]
        [ path [ d "M108,13 C90,15 76,21 76,35 C50,46 32,71 32,101 L32,101 L32,110 L232,110 L232,101 C232,71 214,46 188,35 C188,21 174,15 156,13 L156,32 L156,32 C156,45 145,56 132,56 L132,56 C119,56 108,45 108,32 L108,13 Z" ] [] ]
    , colors { maskId = "hoodieMask", color = color }
    , path [ d "M102,62 L102,110 L95,110 L95,58 C97,59 100,61 102,62 Z M169,58 L169,99 C169,100 167,102 166,102 C164,102 162,100 162,99 L162,62 C164,61 167,59 169,58 Z", fill "#F4F4F4", A.mask "url(#hoodieMask)" ] []
    , path [ d "M91,13 C76,16 66,21 66,32 C66,52 99,68 132,68 C165,68 199,52 199,32 C199,21 188,16 173,13 C182,16 188,22 188,31 C188,51 160,68 132,68 C104,68 76,51 76,31 C76,22 82,16 91,13 Z", fillOpacity "0.16", fill "#000000", A.mask "url(#hoodieMask)" ] []
    ]


overall : Color -> List (Svg msg)
overall color =
    [ mask [ id "overallMask", fill "white" ]
        [ path [ d "M94,30 L94,74 L170,74 L170,30 C179,31 188,34 196,39 L196,110 L187,110 L77,110 L68,110 L68,39 C76,34 85,31 94,30 Z" ] [] ]
    , colors { maskId = "overallMask", color = color }
    , circle [ fill "#F4F4F4", cx "81", cy "83", r "5" ] []
    , circle [ fill "#F4F4F4", cx "183", cy "83", r "5" ] []
    ]


shirtCrewNeck : Color -> List (Svg msg)
shirtCrewNeck color =
    [ mask [ id "shirtCrewNeckMask", fill "white" ]
        [ path [ d "M166,29 C203,32 232,63 232,101 L232,110 L32,110 L32,101 C32,63 62,32 99,29 C99,30 99,30 99,30 C99,42 114,52 133,52 C151,52 166,42 166,30 C166,30 166,30 166,29 Z" ] [] ]
    , colors { maskId = "shirtCrewNeckMask", color = color }
    , ellipse [ cx "133", cy "32", rx "40", ry "27", opacity "0.6", strokeWidth "1", A.mask "url(#shirtCrewNeckMask)", fillOpacity "0.16", fill "#000000" ] []
    ]


shirtScoopNeck : Color -> List (Svg msg)
shirtScoopNeck color =
    [ mask [ id "shirtScoopNeckMask", fill "white" ]
        [ path [ d "M182,32 C211,41 232,69 232,101 L232,110 L32,110 L32,101 C32,68 54,41 84,32 C83,33 83,35 83,36 C83,53 105,66 133,66 C160,66 182,53 182,36 C182,35 182,34 182,32 Z" ] [] ]
    , colors { maskId = "shirtScoopNeckMask", color = color }
    ]


shirtVNeck : Color -> List (Svg msg)
shirtVNeck color =
    [ mask [ id "shirtVNeckMask", fill "white" ]
        [ path [ d "M171,30 C206,35 232,65 232,101 L232,110 L32,110 L32,101 C32,65 58,35 93,30 C94,35 96,40 100,44 L100,44 L129,70 C131,71 133,71 135,70 L135,70 L164,44 C164,43 165,43 165,42 C168,39 171,34 171,30 Z" ] [] ]
    , use [ fill "#E6E6E6", xlinkHref "#vPath" ] []
    , colors { maskId = "shirtVNeckMask", color = color }
    ]


colors : { maskId : String, color : Color } -> Svg msg
colors { maskId, color } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fill color ]
        [ rect [ x "0", y "0", width "264", height "110" ] [] ]

module Avataaars.Internal.Eyes exposing (view)

import Avataaars.Eyes exposing (Eyes(..))
import Svg exposing (Svg, circle, defs, g, mask, path, use)
import Svg.Attributes as A exposing (cx, cy, d, fill, fillRule, id, r, transform, xlinkHref)


view : Eyes -> Svg msg
view eyes =
    case eyes of
        Close ->
            close

        Cry ->
            cry

        Default ->
            defaultEyes

        Dizzy ->
            dizzy

        EyeRoll ->
            eyeRoll

        Happy ->
            happy

        Hearts ->
            hearts

        Side ->
            side

        Squint ->
            squint

        Surprised ->
            surprised

        Wink ->
            wink

        WinkWacky ->
            winkWacky


close : Svg msg
close =
    g []
        [ path [ d "M16,32 C18,29 22,26 27,26 C32,26 36,29 38,32 C38,34 38,34 37,34 C34,32 31,30 27,30 C23,30 20,32 17,34 C17,34 16,34 16,32 Z", transform "translate(27, 38) scale(1, -1) translate(-27, -30) " ] []
        , path [ d "M74,32 C76,29 80,26 85,26 C90,26 94,29 96,32 C96,34 96,34 95,34 C92,32 89,30 85,30 C81,30 78,32 75,34 C75,34 74,34 74,32 Z", transform "translate(85, 38) scale(1, -1) translate(-85, -30) " ] []
        ]


cry : Svg msg
cry =
    g []
        [ defaultEyes
        , path [ d "M25,27 C25,27 19,34 19,38 C19,42 22,44 25,44 C28,44 31,42 31,38 C31,34 25,27 25,27 Z", fill "#92D9FF", transform "translate(0, 8)" ] []
        ]


defaultEyes : Svg msg
defaultEyes =
    g []
        [ circle [ cx "30", cy "30", r "6" ] []
        , circle [ cx "82", cy "30", r "6" ] []
        ]


dizzy : Svg msg
dizzy =
    g [ transform "translate(0, 8)", fillRule "nonzero" ]
        [ path [ d "M29,25.2 L34.5,30.7 C35,31.1 35.7,31.1 36.1,30.7 L37.7,29.1 C38.1,28.6 38.1,27.9 37.7,27.5 L32.2,22 L37.7,16.5 C38.1,16 38.1,15.3 37.7,14.9 L36.1,13.3 C35.6,12.9 34.9,12.9 34.5,13.3 L29,18.8 L23.5,13.3 C23,12.9 22.3,12.9 21.9,13.3 L20.3,14.9 C19.9,15.3 19.9,16 20.3,16.5 L25.8,22 L20.3,27.5 C19.9,28 19.9,28.7 20.3,29.1 L21.9,30.7 C22.4,31.1 23.1,31.1 23.5,30.7 L29,25.2 Z" ] []
        , path [ d "M83,25.2 L88.5,30.7 C89,31.1 89.7,31.1 90.1,30.7 L91.7,29.1 C92.1,28.6 92.1,27.9 91.7,27.5 L86.2,22 L91.7,16.5 C92.1,16 92.1,15.3 91.7,14.9 L90.1,13.3 C89.6,12.9 88.9,12.9 88.5,13.3 L83,18.8 L77.5,13.3 C77,12.9 76.3,12.9 75.9,13.3 L74.3,14.9 C73.9,15.3 73.9,16 74.3,16.5 L79.8,22 L74.3,27.5 C73.9,28 73.9,28.7 74.3,29.1 L75.9,30.7 C76.4,31.1 77.1,31.1 77.5,30.7 L83,25.2 Z" ] []
        ]


eyeRoll : Svg msg
eyeRoll =
    g []
        [ circle [ fill "#FFFFFF", cx "30", cy "30", r "14" ] []
        , circle [ fill "#FFFFFF", cx "82", cy "30", r "14" ] []
        , circle [ cx "30", cy "22", r "6" ] []
        , circle [ cx "82", cy "22", r "6" ] []
        ]


happy : Svg msg
happy =
    g [ transform "translate(0, 8)" ]
        [ path [ d "M16,22 C18,19 22,16 27,16 C32,16 36,19 38,22 C38,24 38,24 37,24 C34,22 31,20 27,20 C23,20 20,22 17,24 C17,24 16,24 16,22 Z" ] []
        , path [ d "M74,22 C76,19 80,16 85,16 C90,16 94,19 96,22 C96,24 96,24 95,24 C92,22 89,20 85,20 C81,20 78,22 75,24 C75,24 74,24 74,22 Z" ] []
        ]


hearts : Svg msg
hearts =
    g [ transform "translate(0, 8)", fill "#FF5353" ]
        [ path [ d "M36,10 C33,10 31,12 29.5,14 C28,12 26,10 23,10 C18,10 14,13 14,18 C14,23 18,27 23,30 C25,32 28,35 28,35 C29,36 30,36 31,35 C31,35 34,32 36,30 C41,27 45,23 45,18 C45,13 41,10 36,10 Z" ] []
        , path [ d "M89,10 C86,10 84,12 82.5,14 C81,12 79,10 76,10 C71,10 67,13 67,18 C67,23 71,27 76,30 C78,32 81,35 81,35 C82,36 83,36 84,35 C84,35 87,32 89,30 C94,27 98,23 98,18 C98,13 94,10 89,10 Z" ] []
        ]


side : Svg msg
side =
    g [ transform "translate(0, 8)" ]
        [ path [ d "M27,20 C26,21 26,23 26,24 C26,27 29,30 32,30 C35,30 38,27 38,24 C38,24 38,23 38,23 C38,23 38,23 38,22 C38,22 38,22 38,22 C37,21 37,20 36,20 C34,17 31,16 27,16 C22,16 18,19 16,22 C16,24 17,24 17,24 C20,22 23,20 27,20 C27,20 27,20 27,20 Z" ] []
        , path [ d "M85,20 C84,21 84,23 84,24 C84,27 87,30 90,30 C93,30 96,27 96,24 C96,24 96,23 96,23 C96,23 96,23 96,22 C96,22 96,22 96,22 C95,21 95,20 94,20 C92,17 89,16 85,16 C80,16 76,19 74,22 C74,24 75,24 75,24 C78,22 81,20 85,20 C85,20 85,20 85,20 Z" ] []
        ]


squint : Svg msg
squint =
    g []
        [ defs []
            [ path [ d "M14,14 C24,14 28,18 28,12 C28,5 22,0 14,0 C6,0 0,5 0,12 C0,18 4,14 14,14 Z", id "squintPath" ] [] ]
        , mask [ id "squintMask", fill "white" ]
            [ use [ xlinkHref "#squintPath" ] [] ]
        , g [ transform "translate(16, 21)" ]
            [ use [ fill "#FFFFFF", xlinkHref "#squintPath" ] []
            , circle [ A.mask "url(#squintMask)", cx "14", cy "10", r "6" ] []
            ]
        , g [ transform "translate(68, 21)" ]
            [ use [ fill "#FFFFFF", xlinkHref "#squintPath" ] []
            , circle [ A.mask "url(#squintMask)", cx "14", cy "10", r "6" ] []
            ]
        ]


surprised : Svg msg
surprised =
    g []
        [ circle [ fill "#FFFFFF", cx "30", cy "30", r "14" ] []
        , circle [ fill "#FFFFFF", cx "82", cy "30", r "14" ] []
        , circle [ cx "30", cy "30", r "6" ] []
        , circle [ cx "82", cy "30", r "6" ] []
        ]


wink : Svg msg
wink =
    g []
        [ circle [ cx "30", cy "30", r "6" ] []
        , path [ d "M70,24 C72,20 76,18 81,18 C86,18 90,20 92,24 C93,25 92,26 91,26 C89,23 85,22 81,22 C78,22 74,23 72,25 C71,26 70,25 70,24 Z", transform "translate(81, 30) rotate(-4) translate(-81, -22) " ] []
        ]


winkWacky : Svg msg
winkWacky =
    g []
        [ circle [ fill "#FFFFFF", cx "82", cy "30", r "12" ] []
        , circle [ cx "82", cy "30", r "6" ] []
        , path [ d "M16,25 C18,22 22,19 27,19 C32,19 36,22 38,25 C38,27 38,27 37,27 C34,25 31,23 27,23 C23,23 20,25 17,27 C17,27 16,27 16,25 Z", transform "translate(0, 8)" ] []
        ]

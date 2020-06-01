module Graphics exposing (Graphics(..), view)

import Svg exposing (Svg, defs, g, mask, path, polygon,   use)
import Svg.Attributes as A exposing (d, fill, fillRule, id, points, strokeWidth, transform, xlinkHref)


type Graphics
    = Bat
    | Cumbia
    | Deer
    | Diamond
    | Hola
    | Pizza
    | Resist
    | Selena
    | Bear
    | SkullOutline
    | Skull


view : { maskId : String, graphics : Graphics } -> Svg msg
view { maskId, graphics } =
    case graphics of
        Bat ->
            bat maskId

        Cumbia ->
            cumbia maskId

        Deer ->
            deer maskId

        Diamond ->
            diamond maskId

        Hola ->
            hola maskId

        Pizza ->
            pizza maskId

        Resist ->
            resist maskId

        Selena ->
            selena maskId

        Bear ->
            bear maskId

        Skull ->
            skull maskId

        SkullOutline ->
            skullOutline maskId


bat : String -> Svg msg
bat maskId =
    g [ id "Clothing/Graphic/Bat", A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill "#FFFFFF" ]
        [ g [ transform "translate(77, 58)", id "Batman!" ]
            [ path [ d "M88,13 C86,7 81,3 75,2 C73,1 64,-1 66,4 C66,6 66,8 64,10 C62,12 59,12 57,10 C56,8 58,5 56,3 C56,3 55,2 54,3 C53,3 54,4 53,5 C52,6 52,6 51,5 C51,4 51,3 50,3 C49,2 48,4 48,5 C48,5 48,6 48,7 C48,9 48,10 48,12 C46,14 45,13 43,12 C41,10 41,8 41,6 C41,3 41,0 38,2 C33,5 28,9 25,14 C23,18 21,23 23,27 C25,32 29,36 34,37 C35,38 39,39 40,38 C42,36 38,34 37,33 C36,31 34,28 36,26 C38,24 39,25 41,27 C42,28 44,32 45,29 C47,27 47,24 50,25 C55,27 55,36 56,40 C56,42 58,44 59,42 C60,40 59,37 59,36 C59,33 58,30 59,27 C60,25 61,23 63,24 C65,25 64,30 67,30 C69,30 68,26 69,25 C71,23 74,24 75,26 C76,29 73,31 73,34 C73,37 77,36 78,35 C81,34 83,31 85,28 C87,24 89,18 88,13" ]
                []
            ]
        ]


cumbia : String -> Svg msg
cumbia maskId =
    g [ id "Clothing/Graphic/Cumbia", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Group" ]
            [ g [ transform "translate(0, 6)" ]
                [ path [ d "M10,24 C14,24 16,21 15,17 C15,15 14,17 12,18 C11,19 10,21 8,20 C4,19 3,15 4,12 C5,10 6,9 8,8 C9,7 11,8 12,9 C13,9 14,11 14,10 C15,10 14,8 14,8 C14,6 13,5 12,4 C8,3 4,5 2,8 C-3,13 1,26 10,24", id "Fill-1", fill "#FFFFFF" ]
                    []
                , path [ d "M20,5 C20,5 20,5 20,5 M19,18 C19,21 22,24 26,24 C30,24 32,20 33,17 C34,13 35,9 33,6 C33,5 33,3 32,4 C30,5 30,8 30,10 C30,12 29,20 26,21 C22,22 22,15 22,13 C22,11 22,9 22,7 C21,6 21,5 20,5 C19,6 19,9 19,11 C18,13 18,16 19,18", id "Fill-5", fill "#FFFFFF" ]
                    []
                , path [ d "M38,21 C38,21 38,22 39,22 C40,23 39,23 40,22 C40,22 41,20 41,19 C41,16 41,13 41,10 C42,12 42,14 43,16 C44,18 45,21 47,21 C49,21 49,18 50,16 C50,14 51,12 51,9 C51,13 50,20 53,23 C54,23 55,19 55,19 C55,17 55,15 55,14 C55,10 56,6 55,2 C54,1 54,-0 52,0 C51,0 50,2 50,3 C48,7 47,11 46,14 C46,13 41,-2 38,3 C37,4 37,6 37,7 C37,8 37,10 37,12 C37,15 37,18 38,21", id "Fill-7", fill "#FFFFFF" ]
                    []
                , path [ d "M62,8 C63,8 68,6 68,8 C67,9 63,11 62,11 C62,10 61,9 61,8 C61,8 62,8 62,8 M68,7 C68,7 68,7 68,7 M68,15 C70,17 69,19 67,20 C67,20 61,22 61,22 C61,22 61,22 61,22 C61,20 61,17 62,16 C63,15 66,15 68,15 M68,7 C68,7 68,7 68,7 M58,24 C58,25 59,26 60,26 C60,26 60,25 60,24 C64,26 69,24 71,21 C74,18 73,13 69,12 C71,10 73,6 70,4 C68,3 64,2 62,4 C59,6 58,10 58,13 C58,16 57,21 58,24", id "Fill-9", fill "#FFFFFF" ]
                    []
                , path [ d "M76,16 C76,18 76,20 76,22 C77,23 77,24 77,24 C78,26 77,25 78,25 C80,23 79,16 79,13 C79,11 79,9 79,7 C79,7 78,4 77,4 C76,4 76,8 76,9 C76,11 76,13 76,16", id "Fill-11", fill "#FFFFFF" ]
                    []
                , path [ d "M95,16 C93,16 91,17 90,17 C90,15 91,13 92,11 C92,10 93,9 93,8 C95,11 95,14 96,17 C96,17 95,16 95,16 M100,17 C99,14 99,12 98,9 C97,7 97,5 95,4 C91,0 89,10 88,12 C87,14 85,17 85,19 C84,20 84,21 85,23 C85,24 85,24 86,24 C87,23 87,22 88,21 C88,21 88,20 88,20 C89,20 90,20 90,21 C92,21 95,20 97,19 C97,20 99,25 100,25 C101,25 101,22 101,22 C101,20 101,19 100,17", id "Fill-13", fill "#FFFFFF" ]
                    []
                , path [ d "M109,3 C109,2 108,0 107,1 C106,3 106,6 106,8 C106,10 105,21 107,20 C107,20 108,19 108,18 C109,17 109,15 109,14 C110,10 110,7 109,3", id "Fill-15", fill "#FFFFFF" ]
                    []
                , path [ d "M108,24 C106,22 102,25 103,28 C105,31 110,27 108,24", id "Fill-17", fill "#FFFFFF" ]
                    []
                , path [ d "M95,29 C92,28 89,28 86,28 C83,28 79,29 76,29 C70,29 63,29 57,29 C44,29 32,29 19,29 C17,29 14,28 11,29 C10,29 8,29 8,30 C7,31 9,32 10,32 C13,33 15,33 18,33 C21,33 24,33 27,33 C39,33 51,32 63,32 C70,32 77,32 84,32 C87,32 91,32 94,32 C95,32 98,31 98,30 C98,29 95,29 95,29", id "Fill-19", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]


deer : String -> Svg msg
deer maskId =
    g [ id "Clothing/Graphic/Deer", A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill "#FFFFFF" ]
        [ g [ transform "translate(77, 58)", id "oh,-deer!" ]
            [ path [ d "M77,16 C77,18 75,19 74,20 C72,21 71,22 69,23 C68,24 67,24 67,24 C65,24 66,24 65,25 C64,27 64,30 63,32 C62,36 58,46 51,42 C49,40 48,38 47,35 C45,33 44,30 43,27 C43,26 43,25 42,25 C42,24 40,24 40,24 C38,23 37,23 36,22 C34,21 30,17 34,16 C35,16 38,16 40,16 C42,16 44,16 45,17 C47,18 47,18 49,17 C45,16 42,14 40,12 C39,10 36,4 38,3 C40,1 41,8 41,9 C43,12 46,13 48,14 C47,13 45,11 45,9 C44,8 44,5 44,4 C45,3 46,3 47,4 C47,5 47,7 47,7 C48,9 48,10 49,12 C51,13 53,15 55,15 C60,16 62,11 63,7 C63,6 63,4 64,4 C65,3 66,5 66,6 C66,8 65,11 63,13 C66,12 68,9 69,6 C70,5 69,2 70,1 C72,0 73,2 72,3 C72,10 67,16 61,17 C62,18 62,18 64,17 C65,17 66,16 67,16 C68,16 70,15 71,15 C72,15 76,15 77,16 Z M59,25 C60,22 56,22 56,25 C56,28 59,28 59,25 Z M57,34 C58,31 53,32 53,33 C53,36 56,35 57,34 Z M52,27 C54,27 55,24 53,23 C50,22 49,27 52,27 Z" ]
                []
            ]
        ]


diamond : String -> Svg msg
diamond maskId =
    g [ id "Clothing/Graphic/Diamond", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Diamond" ]
            [ g [ transform "translate(29, 2)" ]
                [ path [ d "M35,28 C32,30 30,33 27,36 C28,32 29,28 31,25 C31,24 31,24 32,23 C32,23 34,23 34,23 C36,23 38,23 39,23 C38,25 36,26 35,28 M20,32 C17,29 14,25 11,22 C12,23 14,22 15,23 C17,23 17,24 18,26 C19,29 21,31 22,34 C21,34 20,33 20,32 M10,19 C11,18 12,16 13,15 C15,15 19,15 21,15 C19,16 18,18 17,20 C16,18 15,17 14,16 C13,15 15,20 15,20 C13,20 11,20 10,20 C10,20 10,20 10,19 M27,14 C28,14 30,14 32,15 C30,16 30,18 29,20 C29,18 27,16 26,14 C26,14 26,14 27,14 M23,15 C24,15 28,20 28,21 C25,21 22,21 18,21 C20,19 21,17 23,15 M26,32 C26,34 25,35 25,36 C23,32 21,27 19,23 C22,23 25,23 29,23 C28,26 27,29 26,32 M33,15 C35,16 36,18 37,19 C37,19 37,19 37,19 C37,20 38,21 38,21 C36,21 34,21 32,21 C32,19 33,17 32,15 C33,15 33,15 33,15 M41,21 C39,18 37,13 33,13 C30,12 25,12 22,12 C19,12 14,12 11,14 C10,15 9,17 8,18 C8,20 9,21 7,21 C7,21 10,24 10,25 C12,27 14,29 16,31 C19,35 22,40 25,41 C25,41 28,38 29,38 C31,35 33,33 35,31 C37,29 39,27 41,25 C42,23 42,22 41,21", id "Fill-21", fill "#FFFFFF" ]
                    []
                , path [ d "M7,12 C7,12 6,10 6,10 C6,9 5,9 4,8 C4,8 0,7 0,7 C1,10 4,11 7,12", id "Fill-23", fill "#FFFFFF" ]
                    []
                , path [ d "M22,7 C23,8 23,8 23,9 C23,9 24,5 24,4 C24,4 24,0 23,0 C21,0 22,6 22,7", id "Fill-25", fill "#FFFFFF" ]
                    []
                , path [ d "M49,5 C46,5 39,11 40,14 C40,14 41,14 40,14 C40,14 40,14 40,14 C42,13 43,12 44,10 C45,10 46,9 47,8 C47,8 49,5 49,5", id "Fill-27", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]


hola : String -> Svg msg
hola maskId =
    g [ id "Clothing/Graphic/Hola", A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill "#FFFFFF" ]
        [ g [ transform "translate(77, 58)", id "Hola" ]
            [ path [ d "M75,17 C76,23 74,28 69,32 C67,34 65,35 62,36 C61,36 59,37 58,37 C57,37 55,36 54,37 C53,37 51,38 50,39 C50,39 49,39 48,40 C47,40 45,40 44,41 C42,41 35,42 36,39 C36,38 39,36 40,36 C40,35 43,32 43,31 C43,31 41,30 41,29 C40,28 39,27 38,26 C38,24 38,21 38,19 C39,13 41,9 47,6 C49,5 52,4 56,3 C60,3 63,3 66,5 C71,8 73,12 75,17 Z M70,24 C71,24 69,21 68,22 C68,23 69,24 70,24 Z M68,19 C68,19 68,19 68,19 C69,19 69,18 69,18 C69,17 69,15 69,14 C68,13 68,13 67,15 C67,16 67,18 68,19 Z M67,23 C67,22 65,17 65,16 C63,13 62,18 62,20 C62,20 60,26 62,25 C63,23 62,20 65,21 C66,21 65,21 65,22 C66,22 66,23 67,23 Z M60,22 C61,20 58,21 57,21 C57,19 58,17 58,15 C58,15 58,13 57,14 C56,14 56,16 56,16 C56,17 55,21 56,22 C57,23 60,22 60,22 Z M55,19 C56,18 55,15 54,15 C53,15 53,16 53,16 C52,16 52,16 51,17 C49,22 54,25 55,19 Z M49,23 C50,23 50,13 49,13 C48,13 49,18 49,18 C48,19 47,19 47,19 C46,19 45,19 45,18 C45,17 45,13 44,15 C44,16 44,17 44,17 C44,18 44,19 43,19 C43,19 44,20 44,20 C44,20 43,24 45,24 C46,24 45,20 45,20 C46,20 47,20 49,20 C49,20 48,23 49,23 Z M64,17 C64,18 65,18 65,19 C64,19 64,19 63,19 C63,18 64,18 64,17 Z M54,17 C54,17 54,20 53,20 C52,20 52,18 52,18 C53,17 53,17 54,17 Z" ]
                []
            ]
        ]


pizza : String -> Svg msg
pizza maskId =
    g [ id "Clothing/Graphic/Pizza", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Group-2" ]
            [ g [ transform "translate(35, 1)" ]
                [ path [ d "M31,24 C27,26 22,28 20,31 C18,34 18,31 15,32 C13,33 14,37 13,39 C12,38 12,37 11,36 C12,35 12,35 13,34 C13,34 8,34 8,34 C6,35 5,35 3,36 C4,35 4,35 5,34 C5,34 5,33 5,33 C6,32 6,32 7,33 C7,33 8,33 8,33 C11,32 12,27 9,27 C10,24 12,21 13,18 C13,23 19,21 21,19 C23,16 20,10 16,11 C17,9 17,8 18,7 C19,8 21,9 22,10 C24,11 25,12 27,14 C29,17 30,21 33,24 C32,24 32,24 31,24 M40,20 C39,14 35,8 30,5 C28,3 20,-3 17,1 C20,3 22,3 25,4 C28,6 31,8 33,11 C36,15 41,23 33,25 C34,25 34,25 35,24 C34,24 34,22 34,21 C33,20 33,19 32,18 C31,16 30,14 28,12 C27,10 25,8 22,7 C21,6 21,6 20,6 C18,5 19,6 18,4 C18,4 18,3 18,2 C16,4 15,6 15,8 C14,11 12,14 11,16 C9,23 5,29 1,34 C1,35 -1,37 0,39 C1,40 3,39 4,39 C5,38 7,36 9,37 C11,38 10,42 13,42 C16,42 15,37 16,35 C19,36 21,35 22,33 C24,30 26,29 29,28 C30,28 32,26 33,26 C34,26 35,27 36,27 C39,27 40,23 40,20", id "Fill-29", fill "#FFFFFF" ]
                    []
                , path [ d "M19,23 C16,22 13,23 13,26 C12,28 14,30 16,31 C21,33 25,24 19,23", id "Fill-31", fill "#FFFFFF" ]
                    []
                , path [ d "M28,19 C28,18 27,18 26,18 C26,18 26,18 27,17 C23,15 21,21 23,23 C26,27 31,22 28,19", id "Fill-33", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]


resist : String -> Svg msg
resist maskId =
    g [ id "Clothing/Graphic/Resist", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Resist" ]
            [ g [ transform "translate(3, 9)" ]
                [ path [ d "M103,21 C99,20 97,25 101,26 C103,27 105,22 103,21", id "!", fill "#FFFFFF" ]
                    []
                , path [ d "M101,18 C105,18 103,12 104,10 C104,8 105,1 103,0 C98,-2 100,7 100,8 C100,10 100,12 99,14 C99,15 98,18 101,18", id "H", fill "#FFFFFF" ]
                    []
                , path [ d "M96,2 C95,1 93,2 92,2 C91,2 89,1 88,1 C86,1 83,1 81,1 C80,2 79,2 79,4 C80,5 81,5 83,5 C83,5 85,5 85,5 C86,5 86,5 86,6 C86,8 86,10 86,12 C86,15 86,18 86,21 C86,22 86,24 87,25 C88,25 89,25 90,24 C90,23 90,21 90,20 C90,18 89,17 90,16 C90,12 90,8 90,5 C91,5 92,5 93,5 C93,5 94,6 95,6 C97,5 98,3 96,2", id "C", fill "#FFFFFF" ]
                    []
                , path [ d "M68,9 C68,9 68,8 68,9 M68,9 C68,9 68,9 68,9 M69,5 C73,1 74,10 76,9 C81,9 75,2 74,2 C70,-0 67,2 65,5 C63,9 65,12 69,13 C70,14 76,16 74,18 C73,20 71,20 70,19 C67,19 68,17 66,16 C65,14 63,15 63,17 C63,18 64,20 65,21 C67,23 71,23 74,22 C78,21 79,17 76,13 C74,12 72,11 70,10 C67,9 68,8 69,5", id "A", fill "#FFFFFF" ]
                    []
                , path [ d "M59,21 C58,16 58,11 58,6 C58,4 59,1 57,0 C54,-1 54,3 54,4 C54,9 55,14 55,19 C55,21 55,24 57,24 C60,24 59,22 59,21", id "E", fill "#FFFFFF" ]
                    []
                , path [ d "M49,5 C47,2 42,1 39,4 C37,6 36,11 38,13 C40,16 45,14 47,17 C48,20 44,22 42,19 C41,18 41,17 40,16 C38,16 37,17 37,19 C38,22 42,24 45,24 C49,24 51,21 50,18 C50,13 46,12 42,12 C41,11 41,11 41,10 C41,8 42,5 45,6 C47,6 47,9 49,9 C53,10 50,6 49,5", id "P", fill "#FFFFFF" ]
                    []
                , path [ d "M32,20 C30,21 29,21 27,21 C26,20 23,21 22,20 C21,19 22,17 22,16 C22,14 21,14 22,14 C23,14 24,14 25,14 C27,14 29,14 30,14 C31,13 33,12 31,11 C30,10 29,10 28,10 C26,10 24,10 22,10 C22,9 22,7 22,6 C25,6 27,7 30,6 C32,6 33,5 33,4 C32,2 30,2 29,2 C27,2 25,2 24,2 C23,2 21,2 20,2 C17,3 18,7 18,9 C18,12 18,15 18,17 C18,20 18,23 21,24 C24,24 27,24 30,24 C32,24 33,24 34,23 C34,22 33,20 32,20", id "M", fill "#FFFFFF" ]
                    []
                , path [ d "M8,6 C11,6 11,9 11,11 C11,12 12,12 10,13 C9,13 8,13 6,13 C4,13 4,13 4,10 C4,9 4,6 4,6 C4,6 8,6 8,6 M13,21 C12,19 11,18 9,16 C12,16 14,16 15,14 C15,12 15,9 14,7 C13,4 11,3 8,2 C7,2 2,2 1,3 C-1,4 0,9 0,10 C1,14 0,17 0,20 C0,21 -0,23 0,24 C1,25 2,25 3,25 C4,24 4,23 4,22 C4,20 4,18 4,16 C5,18 7,19 9,21 C10,22 11,24 13,25 C14,26 15,27 16,25 C16,23 14,22 13,21", id "I", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]


selena : String -> Svg msg
selena maskId =
    g [ id "Clothing/Graphic/Selena", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Selena" ]
            [ g [ transform "translate(17, 0)" ]
                [ path [ d "M65,8 C65,8 63,13 62,11 C62,10 62,7 63,6 C63,5 64,5 65,4 C65,5 65,6 65,8 M62,11 C62,11 62,11 62,11 M62,11 C62,11 62,11 62,11 M55,6 C55,6 55,6 55,6 M43,11 C42,12 42,14 42,15 C41,13 42,11 43,10 C43,10 43,11 43,11 M43,9 C43,9 42,8 43,9 M26,19 C26,17 27,16 28,15 C28,16 27,17 26,19 M76,5 C76,6 74,8 73,8 C72,9 71,10 70,9 C67,9 68,5 68,3 C67,1 67,2 65,2 C64,2 64,1 63,2 C61,3 59,5 58,8 C58,6 57,3 55,4 C53,4 52,7 51,8 C51,7 50,5 49,6 C48,6 48,9 48,10 C47,12 46,18 43,17 C44,15 46,9 44,7 C42,4 40,11 39,13 C39,14 40,17 40,18 C39,19 37,19 36,18 C35,17 36,15 36,14 C36,12 37,10 37,9 C37,7 38,1 36,1 C34,1 33,6 33,8 C33,9 33,11 33,13 C33,15 33,16 33,18 C32,19 28,25 26,21 C29,20 31,16 30,13 C28,10 25,15 24,17 C23,20 24,23 27,24 C30,25 33,22 34,19 C35,21 37,21 39,21 C40,21 40,20 41,20 C42,19 41,19 42,19 C46,19 47,18 49,15 C49,16 49,17 50,17 C51,16 51,15 51,14 C52,11 53,8 55,6 C57,8 55,12 57,14 C59,17 60,11 60,10 C60,15 66,13 67,10 C70,13 77,10 76,5", id "Bom-Bom", fill "#FFFFFF" ]
                    []
                , path [ d "M69,15 C66,15 62,16 58,17 C55,18 51,19 48,20 C44,21 40,23 36,24 C33,26 29,27 27,30 C27,30 29,30 29,30 C30,29 31,29 32,29 C34,28 35,27 37,26 C41,25 45,23 49,22 C53,20 57,19 61,18 C65,17 69,17 72,16 C72,16 72,16 72,16 C72,16 70,15 69,15", id "Bidi", fill "#FFFFFF" ]
                    []
                , path [ d "M22,21 C20,20 17,20 14,21 C12,21 9,22 7,22 C6,22 3,23 2,21 C2,20 5,16 6,15 C9,11 13,6 18,3 C18,5 17,7 17,9 C17,10 16,14 17,15 C18,15 19,12 19,12 C20,9 20,7 20,5 C21,3 22,0 20,0 C18,-0 16,2 15,3 C12,5 9,9 6,12 C5,13 3,15 2,17 C1,18 -1,21 0,23 C2,26 10,24 13,23 C15,23 17,22 19,23 C21,23 21,24 20,26 C19,30 15,33 13,36 C11,38 6,44 5,40 C4,38 5,35 6,33 C6,32 7,31 7,30 C7,30 8,28 8,28 C4,29 2,35 2,38 C2,40 2,43 4,44 C5,45 7,43 8,42 C12,40 15,36 18,33 C20,31 27,23 22,21", id "Bidi", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]


bear : String -> Svg msg
bear maskId =
    g [ id "Clothing/Graphic/Bear", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ polygon [ id "BearPath", points "48 0 48 42 0 42 0 0 48 0" ]
                []
            ]
        , g [ transform "translate(77, 58)", id "Group-76" ]
            [ g [ transform "translate(31, 1)" ]
                [ mask [ id "BearMask", fill "white" ]
                    [ use [ xlinkHref "#PearPath" ]
                        []
                    ]
                , path [ d "M34,32 C34,34 30,39 27,36 C24,33 32,31 29,28 C28,27 24,28 23,28 C21,28 19,28 19,31 C20,32 21,32 22,32 C22,33 22,36 21,37 C20,38 19,37 18,37 C15,35 13,31 15,29 C19,23 35,22 34,32 M15,15 C16,14 17,15 18,16 C19,17 17,19 16,18 C14,18 13,16 15,15 M33,16 C32,19 27,16 30,14 C32,13 33,15 33,16 M48,23 C48,21 47,19 46,16 C45,15 44,14 44,13 C43,13 43,12 43,12 C42,11 42,12 42,10 C43,8 44,6 43,4 C42,2 40,1 37,0 C36,0 35,1 34,1 C33,1 32,3 31,3 C30,3 28,2 28,2 C26,2 25,2 23,2 C22,2 18,4 17,3 C16,3 14,1 13,1 C12,1 10,0 9,1 C7,2 5,5 5,7 C5,8 6,9 6,10 C6,12 6,11 5,12 C5,13 4,13 4,14 C1,17 -0,23 1,27 C4,38 15,42 25,42 C35,41 49,34 48,23", id "Fill-74", fill "#FFFFFF", A.mask "url(#$BearMask)" ]
                    []
                ]
            ]
        ]


skull : String -> Svg msg
skull maskId =
    g [ id "Clothing/Graphic/Skull", A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill "#FFFFFF" ]
        [ g [ transform "translate(77, 58)", id "Fill-49" ]
            [ path [ d "M65,20 C65,23 60,24 58,22 C57,22 57,20 56,19 C56,17 56,14 56,12 C56,11 55,10 57,10 C58,10 59,10 59,11 C62,12 66,17 65,20 M53,14 C53,17 54,22 52,24 C50,26 46,24 45,22 C44,19 47,15 49,13 C50,12 51,10 52,11 C53,11 53,14 53,14 M54,25 C55,24 61,28 58,30 C58,31 54,32 53,31 C52,30 54,26 54,25 M73,18 C73,2 53,-2 42,7 C38,10 36,14 36,19 C36,24 37,28 40,31 C42,32 43,33 43,35 C44,37 44,39 46,41 C47,42 48,42 49,42 C51,41 51,38 51,36 C53,41 59,43 60,36 C61,38 63,41 65,39 C66,38 66,36 66,35 C67,33 66,33 68,31 C72,28 73,23 73,18" ]
                []
            ]
        ]


skullOutline : String -> Svg msg
skullOutline maskId =
    g [ id "Clothing/Graphic/Skull-Outline", A.mask <| "url(#" ++ maskId ++ ")", strokeWidth "1", fillRule "evenodd" ]
        [ g [ transform "translate(77, 58)", id "Skull" ]
            [ g [ transform "translate(36, 1)" ]
                [ path [ d "M36,17 C36,18 36,19 35,20 C35,21 33,22 33,23 C31,25 33,27 32,29 C31,30 28,29 27,32 C25,34 27,37 26,39 C24,39 24,34 21,37 C20,39 21,41 19,37 C18,36 17,35 16,36 C15,36 14,39 13,39 C11,40 11,33 10,32 C10,32 9,31 9,31 C8,31 7,31 6,31 C5,30 5,28 5,27 C5,25 6,23 5,21 C5,20 3,19 3,17 C0,9 12,4 18,4 C26,3 37,8 36,17 M38,12 C37,8 34,6 30,4 C29,3 27,2 25,2 C24,1 22,2 20,1 C19,1 18,-0 16,0 C14,0 12,1 10,2 C7,4 3,6 1,10 C-1,14 -0,17 2,21 C4,24 1,29 4,32 C5,34 7,33 8,33 C9,34 9,37 9,38 C10,42 15,43 17,39 C17,41 21,44 23,41 C24,42 26,43 27,41 C29,40 29,38 29,36 C29,35 28,33 29,32 C30,31 33,32 34,31 C35,29 34,27 35,26 C35,24 35,24 36,23 C39,20 40,15 38,12", id "Boo!", fill "#FFFFFF" ]
                    []
                , path [ d "M14,28 C16,26 16,21 16,18 C16,13 12,15 11,18 C9,20 6,24 7,27 C9,29 13,30 14,28", id "Boo!", fill "#FFFFFF" ]
                    []
                , path [ d "M28,19 C27,17 26,17 25,15 C24,14 23,13 22,13 C19,14 20,20 20,21 C20,23 20,24 21,25 C22,26 24,26 26,26 C30,25 30,23 28,19", id "Boo!", fill "#FFFFFF" ]
                    []
                , path [ d "M19,32 C19,32 19,31 19,31 C20,32 20,32 19,32 M20,28 C18,25 13,34 16,35 C17,35 18,35 18,34 C19,34 20,35 21,34 C23,32 22,29 20,28", id "Boo!", fill "#FFFFFF" ]
                    []
                ]
            ]
        ]

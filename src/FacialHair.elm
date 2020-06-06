module FacialHair exposing (FacialHair(..), view)

import HairColor exposing (HairColor)
import Svg exposing (Svg, defs, g, mask, path, use)
import Svg.Attributes exposing (d, fill, id, transform, xlinkHref)


type FacialHair
    = Blank
    | BeardMedium HairColor
    | BeardLight HairColor
    | BeardMajestic HairColor
    | MoustacheFancy HairColor
    | MoustacheMagnum HairColor


view : FacialHair -> Svg msg
view facialHair =
    g [ transform "translate(48, 72)" ] <|
        case facialHair of
            Blank ->
                []

            BeardMedium hairColor ->
                facialHairGeneric beardMedium hairColor

            BeardLight hairColor ->
                facialHairGeneric beardLight hairColor

            BeardMajestic hairColor ->
                facialHairGeneric beardMajestic hairColor

            MoustacheFancy hairColor ->
                facialHairGeneric moustacheFancy hairColor

            MoustacheMagnum hairColor ->
                facialHairGeneric moustacheMagnum hairColor


facialHairGeneric : String -> HairColor -> List (Svg msg)
facialHairGeneric pathString hairColor =
    [ defs []
        [ path [ d pathString, id "facialHairPath" ] [] ]
    , mask [ id "facialHairMask", fill "white" ]
        [ use [ xlinkHref "#facialHairPath" ] [] ]
    , HairColor.view { maskId = "facialHairMask", hairColor = hairColor }
    ]


beardMedium : String
beardMedium =
    "M105,94 C101,100 98,96 94,93 C92,91 88,89 85,89 C81,89 77,91 75,93 C71,96 68,100 64,94 C61,90 62,83 65,79 C69,73 74,76 80,75 C82,75 83,75 85,74 C86,75 87,75 89,75 C95,76 100,73 104,79 C107,83 108,90 105,94 M140,26 C137,40 135,54 133,69 C132,72 132,75 131,78 C131,78 131,80 130,81 C129,82 125,77 124,76 C121,73 119,71 116,68 C109,64 102,62 94,61 C91,61 87,61 84,63 C81,61 77,61 74,61 C66,62 59,64 52,68 C49,71 47,73 44,76 C43,77 39,82 38,81 C37,80 37,78 37,78 C36,75 36,72 35,69 C33,54 31,40 28,26 C27,26 26,45 26,46 C25,54 25,61 25,68 C26,80 28,95 37,105 C45,113 58,115 68,120 C70,121 71,122 73,122 C75,124 79,125 84,125 C89,125 93,124 95,122 C97,121 99,121 100,120 C110,115 123,113 131,105 C140,95 142,80 143,68 C143,61 143,54 142,46 C142,45 141,26 140,26 Z"


beardLight : String
beardLight =
    "M101,98 C99,100 96,101 93,101 C92,101 90,96 84,96 C78,96 76,101 75,101 C72,101 69,100 67,98 C62,94 58,88 60,81 C62,78 64,74 67,73 C71,72 76,73 80,72 C82,72 83,72 84,71 C85,72 86,72 88,72 C92,73 97,72 101,73 C104,74 106,78 108,81 C110,88 106,94 101,98 M140,26 C137,34 138,45 137,54 C137,61 135,72 129,76 C126,79 120,83 116,81 C113,81 112,72 108,69 C104,66 99,64 93,64 C91,64 86,64 84,66 C82,64 77,64 75,64 C69,64 64,66 60,69 C56,72 55,81 52,81 C48,83 42,79 39,76 C33,72 31,61 31,54 C30,45 31,34 28,26 C26,26 27,42 27,42 L27,62 C27,78 37,101 58,109 C63,112 75,115 84,115 C93,115 105,112 110,110 C131,101 141,78 141,62 L141,42 C141,42 142,26 140,26"


beardMajestic : String
beardMajestic =
    "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z"


moustacheFancy : String
moustacheFancy =
    "M84,69 C77,66 68,65 62,67 C57,69 52,76 43,73 C42,73 42,73 42,73 C43,78 51,81 54,81 C65,82 74,73 84,72 C94,73 103,82 114,81 C117,81 125,78 126,73 C126,73 126,73 125,73 C116,76 111,69 106,67 C100,65 91,66 84,69 Z"


moustacheMagnum : String
moustacheMagnum =
    "M84,75 C83,76 83,76 82,77 C73,82 64,77 59,78 C56,78 53,79 52,78 C51,76 55,65 65,63 C72,62 81,64 84,67 C86,64 96,62 103,63 C113,65 117,76 116,78 C115,79 112,78 109,78 C104,77 95,82 86,77 C85,76 85,76 84,75 Z"

module Top exposing (AccFac(..), AccHairFac(..), AccHat(..), AccHatFac(..), Fac(..), Top(..), view)

import Accessory exposing (Accessory(..))
import FacialHair exposing (FacialHair(..))
import HairColor exposing (HairColor(..))
import HatColor exposing (HatColor(..))
import Svg exposing (Svg, circle, defs, ellipse, feColorMatrix, feMerge, feMergeNode, feOffset, filter, g, mask, path, polygon, rect, use)
import Svg.Attributes as A exposing (cx, cy, d, dx, dy, fill, fillOpacity, fillRule, filterUnits, height, id, in_, opacity, points, r, result, rx, ry, stroke, strokeWidth, transform, type_, values, width, x, xlinkHref, y)


type Top
    = Fac Fac FacialHair
    | AccHat AccHat Accessory HatColor
    | AccFac AccFac Accessory FacialHair
    | AccHatFac AccHatFac Accessory HatColor FacialHair
    | AccHairFac AccHairFac Accessory HairColor FacialHair


type Fac
    = Eyepatch


type AccHat
    = Hijab


type AccFac
    = NoHair
    | Hat
    | LongHairFrida
    | LongHairShavedSides


type AccHatFac
    = Turban
    | WinterHat1
    | WinterHat2
    | WinterHat3
    | WinterHat4


type AccHairFac
    = LongHairBigHair
    | LongHairBob
    | LongHairBun
    | LongHairCurly
    | LongHairCurvy
    | LongHairDreads
    | LongHairFro
    | LongHairFroBand
    | LongHairNotTooLong
    | LongHairMiaWallace
    | LongHairStraight
    | LongHairStraight2
    | LongHairStraightStrand
    | ShortHairDreads01
    | ShortHairDreads02
    | ShortHairFrizzle
    | ShortHairShaggyMullet
    | ShortHairShortCurly
    | ShortHairShortFlat
    | ShortHairShortRound
    | ShortHairShortWaved
    | ShortHairSides
    | ShortHairTheCaesar
    | ShortHairTheCaesarSidePart


view : Top -> Svg msg
view top =
    case top of
        AccFac NoHair accessory facialHair ->
            noHair accessory facialHair

        Fac Eyepatch facialHair ->
            eyePatch facialHair

        AccFac Hat accessory facialHair ->
            hat accessory facialHair

        AccFac LongHairFrida accessory facialHair ->
            longHairFrida accessory facialHair

        AccFac LongHairShavedSides accessory facialHair ->
            longHairShavedSides accessory facialHair

        AccHat Hijab accessory hatColor ->
            hijab accessory hatColor

        AccHatFac Turban accessory hatColor facialHair ->
            turban accessory hatColor facialHair

        AccHatFac WinterHat1 accessory hatColor facialHair ->
            winterHat1 accessory hatColor facialHair

        AccHatFac WinterHat2 accessory hatColor facialHair ->
            winterHat2 accessory hatColor facialHair

        AccHatFac WinterHat3 accessory hatColor facialHair ->
            winterHat3 accessory hatColor facialHair

        AccHatFac WinterHat4 accessory hatColor facialHair ->
            winterHat4 accessory hatColor facialHair

        AccHairFac LongHairBigHair accessory hairColor facialHair ->
            longHairBigHair accessory hairColor facialHair

        AccHairFac LongHairBob accessory hairColor facialHair ->
            longHairBob accessory hairColor facialHair

        AccHairFac LongHairBun accessory hairColor facialHair ->
            longHairBun accessory hairColor facialHair

        AccHairFac LongHairCurly accessory hairColor facialHair ->
            longHairCurly accessory hairColor facialHair

        AccHairFac LongHairCurvy accessory hairColor facialHair ->
            longHairCurvy accessory hairColor facialHair

        AccHairFac LongHairDreads accessory hairColor facialHair ->
            longHairDreads accessory hairColor facialHair

        AccHairFac LongHairFro accessory hairColor facialHair ->
            longHairFro accessory hairColor facialHair

        AccHairFac LongHairFroBand accessory hairColor facialHair ->
            longHairFroBand accessory hairColor facialHair

        AccHairFac LongHairNotTooLong accessory hairColor facialHair ->
            longHairNotTooLong accessory hairColor facialHair

        AccHairFac LongHairMiaWallace accessory hairColor facialHair ->
            longHairMiaWallace accessory hairColor facialHair

        AccHairFac LongHairStraight accessory hairColor facialHair ->
            longHairStraight accessory hairColor facialHair

        AccHairFac LongHairStraight2 accessory hairColor facialHair ->
            longHairStraight2 accessory hairColor facialHair

        AccHairFac LongHairStraightStrand accessory hairColor facialHair ->
            longHairStraightStrand accessory hairColor facialHair

        AccHairFac ShortHairDreads01 accessory hairColor facialHair ->
            shortHairDreads01 accessory hairColor facialHair

        AccHairFac ShortHairDreads02 accessory hairColor facialHair ->
            shortHairDreads02 accessory hairColor facialHair

        AccHairFac ShortHairFrizzle accessory hairColor facialHair ->
            shortHairFrizzle accessory hairColor facialHair

        AccHairFac ShortHairShaggyMullet accessory hairColor facialHair ->
            shortHairShaggyMullet accessory hairColor facialHair

        AccHairFac ShortHairShortCurly accessory hairColor facialHair ->
            shortHairShortCurly accessory hairColor facialHair

        AccHairFac ShortHairShortFlat accessory hairColor facialHair ->
            shortHairShortFlat accessory hairColor facialHair

        AccHairFac ShortHairShortRound accessory hairColor facialHair ->
            shortHairShortRound accessory hairColor facialHair

        AccHairFac ShortHairShortWaved accessory hairColor facialHair ->
            shortHairShortWaved accessory hairColor facialHair

        AccHairFac ShortHairSides accessory hairColor facialHair ->
            shortHairSides accessory hairColor facialHair

        AccHairFac ShortHairTheCaesar accessory hairColor facialHair ->
            shortHairTheCaesar accessory hairColor facialHair

        AccHairFac ShortHairTheCaesarSidePart accessory hairColor facialHair ->
            shortHairTheCaesarSidePart accessory hairColor facialHair


noHair : Accessory -> FacialHair -> Svg msg
noHair accessory facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd", transform "translate(-1, 0)" ]
        [ FacialHair.view facialHair
        , Accessory.view accessory
        ]


eyePatch : FacialHair -> Svg msg
eyePatch facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd", transform "translate(-1, 0)" ]
        [ FacialHair.view facialHair
        , path [ d "M160,40 C157,37 154,44 153,45 C149,50 146,54 142,58 C135,67 127,75 120,84 C119,85 119,85 118,85 C117,85 116,85 115,85 C112,85 109,85 106,86 C101,87 95,89 91,92 C90,93 89,94 87,94 C86,94 85,94 84,94 C82,93 79,92 76,93 C74,93 73,97 76,98 C78,99 82,98 84,99 C86,99 86,99 85,101 C85,105 86,109 87,112 C91,119 100,127 109,127 C116,126 123,119 126,113 C127,110 128,106 128,103 C128,100 128,98 128,96 C127,95 127,94 126,93 C126,92 124,90 124,89 C124,88 128,83 129,82 C133,77 137,73 141,68 C145,63 149,58 152,53 C154,51 163,43 160,40", id "Badass-Eyepatch", fill "#28354B" ] []
        ]


hat : Accessory -> FacialHair -> Svg msg
hat accessory facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ mask [ id "hatMask", fill "white" ]
            [ path [ d "M156,181 C174,172 186,155 188,135 C194,134 198,129 198,123 L198,110 C198,104 194,99 188,98 L188,92 C188,84 186,76 183,70 C173,53 89,54 81,69 C78,76 76,84 76,92 L76,98 C70,99 66,104 66,110 L66,123 C66,129 70,134 76,135 C78,155 90,172 108,181 L108,199 L104,199 L104,199 C64,199 32,231 32,271 L32,280 L232,280 L232,271 C232,231 200,199 160,199 L156,199 L156,181 Z M0,0 L264,0 L264,280 L0,280 L0,0 Z" ] [] ]
        , g [ id "Mask-Hair" ]
            [ path [ d "M123,2 L142,2 L142,2 C161,2 177,15 181,33 L190,75 L75,75 L84,33 L84,33 C88,15 104,2 123,2 Z", fill "#1F333C", A.mask "url(#hatMask)" ] []
            , ellipse [ id "Hipster", fill "#1F333C", A.mask "url(#hatMask)", cx "132", cy "87.5", rx "122", ry "57.5" ] []
            , ellipse [ id "Very", fill "#15232A", A.mask "url(#hatMask)", cx "132", cy "82", rx "62", ry "25" ] []
            ]
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


hijab : Accessory -> HatColor -> Svg msg
hijab accessory hatColor =
    g [ strokeWidth "1", fillRule "evenodd", transform "translate(-1, 0)" ]
        [ mask [ id "hijabMask2", fill "white" ]
            [ path [ d "M66,77 C72,45 100,21 133,21 L133,21 L133,21 C171,21 201,51 201,89 L201,120 C202,130 203,136 203,140 C205,147 209,145 209,155 C209,165 205,169 205,178 C205,187 220,194 220,205 C220,217 213,270 143,270 C128,270 115,266 104,258 C105,264 105,272 106,280 L59,280 C60,256 52,243 52,216 C52,190 65,151 65,142 C65,141 65,141 65,140 C65,139 65,138 65,137 L65,89 L65,89 C65,85 65,81 66,77 C66,77 66,77 66,77 C66,77 66,77 66,77 Z M132.5,53 L132.5,53 C102,53 78,77 78,107.5 L78,107.5 L78,130.5 C78,161 102,185 132.5,185 L133.5,185 C164,185 188,161 188,130.5 L188,107.5 C188,77 164,53 133.5,53 L133.5,53 L132.5,53 Z", id "hijabPath" ] [] ]
        , HatColor.view { maskId = "hijabMask2", hatColor = hatColor }
        , path [ d "M72,105 C71,101 71,97 71,93.5 C71,60 99,32 133,32 C167,32 195,60 195,93.5 C195,97 195,101 194,105 C192,73 166,47 133,47 C100,47 74,73 72,105 Z", id "Band", stroke "none", fillOpacity "0.5", fill "#FFFFFF", fillRule "evenodd", A.mask "url(#hijabMask2)" ] []
        , path [ d "M188,105 C189,108 189,112 189,115.5 L189,138.5 C189,169 165,193 134.5,193 L131.5,193 C101,193 77,169 77,138.5 L77,115.5 L77,115.5 C77,112 77,108 78,105 C78,106 78,107 78,107.5 L78,107.5 L78,130.5 C78,161 102,185 132.5,185 L133.5,185 C164,185 188,161 188,130.5 L188,130.5 L188,107.5 C188,107 188,106 188,105 Z M114,207 C121,212 136,214 152,211 C169,208 183,201 187,194 C187,194 187,195 187,195 C189,205 174,215 154,219 C134,222 116,217 114,208 C114,208 114,207 114,207 Z M126,236 C134,242 150,242 167,236 C184,230 196,219 199,209 C199,210 199,210 199,210 C204,223 191,239 171,246 C151,254 131,249 126,237 C126,237 126,236 126,236 Z", id "Shadows", stroke "none", fillOpacity "0.16", fill "#000000", fillRule "evenodd", A.mask "url(#hijabMask2)" ] []
        , Accessory.view accessory
        ]


turban : Accessory -> HatColor -> FacialHair -> Svg msg
turban accessory hatColor facialHair =
    g [ strokeWidth "1", fillRule "evenodd", transform "translate(-1, 0)" ]
        [ FacialHair.view facialHair
        , g [ transform "translate(1, 0)" ]
            [ mask [ id "topMask2", fill "white" ]
                [ path [ d "M156,181 C174,172 186,155 188,135 C194,134 198,129 198,123 L198,110 C198,104 194,99 188,98 L188,92 C188,61 163,36 132,36 C101,36 76,61 76,92 L76,92 L76,98 C70,99 66,104 66,110 L66,123 C66,129 70,134 76,135 C78,155 90,172 108,181 L108,199 L104,199 L104,199 C64,199 32,231 32,271 L32,280 L232,280 L232,271 C232,231 200,199 160,199 L156,199 L156,181 Z M0,0 L264,0 L264,280 L0,280 L0,0 Z", id "topPath2" ] [] ]
            ]
        , g [ transform "translate(1, 0)" ]
            [ path [ d "M75,97.5 C74,95 73,93 73,90 C73,72 99,57 132,57 C165,57 191,72 191,90 C191,93 190,95 189,97.5 C183,83 160,72 132,72 C104,72 81,83 75,97.5 Z", id "Band", fill "#EDECE3" ] []
            , g [ transform "translate(48, 3)" ]
                [ defs []
                    [ path [ d "M84,56 C107,69 145,82 139,138 C158,132 168,117 168,91 C168,44 116,0 86,0 C85,0 85,0 84,0 C83,0 83,0 82,0 C52,0 0,44 0,91 C-0,117 10,133 29,138 C23,82 61,69 84,56 Z", id "topPath3" ] []
                    ]
                , mask [ id "topMask3", fill "white" ]
                    [ use [ xlinkHref "#topPath3" ] []
                    ]
                , use [ id "Turban-Mask", fill "#124C74", xlinkHref "#topPath3" ] []
                , HatColor.view { maskId = "topMask3", hatColor = hatColor }
                ]
            , path [ d "M48,96 C48,121 58,136 77,141 C58,136 48,122 48,97 C48,97 48,96 48,96 Z M153,30 C153,36 152,43 148,50 C137,72 77,72 76,130 C76,68 137,67 148,45 C151,40 152,35 153,30 Z", id "Shadow", fillOpacity "0.16", fill "#000000" ] []
            ]
        , Accessory.view accessory
        ]


winterHat1 : Accessory -> HatColor -> FacialHair -> Svg msg
winterHat1 accessory hatColor facialHair =
    g [ transform "translate(-1, 0)" ]
        [ defs []
            [ path [ d "M120,54 L20,54 L20,155 C20,161 16,165 10,165 C4,165 0,161 0,155 L0,54 L0,44 C0,20 20,4e-15 44,0 L96,0 C120,-4e-15 140,20 140,44 L140,54 L140,155 C140,161 136,165 130,165 C124,165 120,161 120,155 L120,54 Z", id "topPath1" ] []
            , rect [ id "topPath2", x "74", y "50", width "118", height "36", rx "8" ] []
            ]
        , g [ id "hat", strokeWidth "1", fillRule "evenodd", transform "translate(63, 20)" ]
            [ path [ d "M1,48 L24,48 L24,154 C24,160 19,165 12,165 C6,165 1,160 1,154 L1,48 Z M116,48 L139,48 L139,154 C139,160 134,165 128,165 C121,165 116,160 116,154 L116,48 Z", id "inside", fill "#F4F4F4" ] []
            , mask [ id "topMask2", fill "white" ]
                [ use [ xlinkHref "#topPath1" ] [] ]
            , use [ id "hat-mask", fill "#D8D8D8", xlinkHref "#topPath1" ] []
            , HatColor.view { maskId = "topMask2", hatColor = hatColor }
            ]
        , use [ fill "black", fillOpacity "1", A.filter "url(#topPath2)", xlinkHref "#topPath2" ] []
        , use [ fill "#F4F4F4", fillRule "evenodd", xlinkHref "#topPath2" ] []
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


winterHat2 : Accessory -> HatColor -> FacialHair -> Svg msg
winterHat2 accessory hatColor facialHair =
    g [ transform "translate(-1, 0)" ]
        [ g [ id "hat", strokeWidth "1", fillRule "evenodd", transform "translate(61, 0)" ]
            [ defs []
                [ path [ d "M72,21 C127,21 144,69 144,103 L144,177 C144,196 121,196 121,166 L121,87 C121,80 118,78 112,78 L72,78 L32,78 C26,78 23,80 23,87 L23,166 C23,196 -1e-14,196 0,177 L0,103 C-7e-15,69 17,21 72,21 Z", id "topPath1" ] []
                ]
            , mask [ id "topMask2", fill "white" ]
                [ use [ xlinkHref "#topPath1" ] [] ]
            , g [ id "string", transform "translate(0, 176)", fill "#F4F4F4" ]
                [ circle [ id "puff", cx "9", cy "65", r "9" ] []
                , rect [ x "8", y "0", width "2", height "58" ] []
                ]
            , g [ id "string", transform "translate(126, 168)", fill "#F4F4F4" ]
                [ circle [ id "puff", cx "9", cy "65", r "9" ] []
                , rect [ x "8", y "0", width "2", height "58" ] []
                ]
            , circle [ id "puff", fill "#F4F4F4", cx "72", cy "20", r "20" ] []
            , use [ fill "#F4F4F4", xlinkHref "#topPath1" ] []
            , HatColor.view { maskId = "topMask2", hatColor = hatColor }
            , rect [ id "color-dark", fillOpacity "0.2", fill "#000000", x "-1", y "21", width "146", height "46", A.mask "url(#topMask2)" ] []
            , g [ id "light-triangles", transform "translate(29, 32)", fill "#FFFFFF", fillOpacity "0.5" ]
                [ polygon [ transform "translate(13, 9) rotate(180) translate(-13, -9) ", points "12.5 0 25 18 0 18" ] []
                , polygon [ transform "translate(44, 9) rotate(180) translate(-44, -9) ", points "43.5 0 56 18 31 18" ] []
                , polygon [ transform "translate(75, 9) rotate(180) translate(-75, -9) ", points "74.5 0 87 18 62 18" ] []
                ]
            , g [ id "dark-triangles", transform "translate(13, 41)", fill "#000000", fillOpacity "0.5" ]
                [ polygon [ points "12.5 0 25 18 0 18" ] []
                , polygon [ points "43.5 0 56 18 31 18" ] []
                , polygon [ points "74.5 0 87 18 62 18" ] []
                , polygon [ points "105.5 0 118 18 93 18" ] []
                ]
            ]
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


winterHat3 : Accessory -> HatColor -> FacialHair -> Svg msg
winterHat3 accessory hatColor facialHair =
    g [ id "Top/Accessories/Winter-Hat-3", transform "translate(-1, 0)" ]
        [ defs []
            [ path [ d "M66,0 L66,0 C102,0 132,30 132,66 L132,71 L0,71 L0,66 C-4e-15,30 30,0 66,0 Z", id "topPath1" ] []
            , path [ d "M67,61 C83,50 105,44 133,44 C161,44 183,50 199,61 L199,61 C201,63 202,65 202,68 L202,98 C202,101 200,102 198,102 C197,102 197,102 196,102 C179,91 159,86 134,86 C109,86 88,91 70,102 L70,102 C68,103 66,103 65,101 C64,100 64,99 64,99 L64,68 C64,65 65,63 67,61 Z", id "topPath2" ] []
            ]
        , g [ id "hat", strokeWidth "1", fillRule "evenodd", transform "translate(67, 12)" ]
            [ circle [ id "puff", fill "#F4F4F4", cx "66", cy "8", r "20" ] []
            , mask [ id "topMask2", fill "white" ]
                [ use [ xlinkHref "#topPath1" ] [] ]
            , use [ id "hat-mask", fill "#D8D8D8", xlinkHref "#topPath1" ] []
            , HatColor.view { maskId = "topMask2", hatColor = hatColor }
            ]
        , g [ id "hat-front" ]
            [ use [ fill "black", fillOpacity "1", A.filter "url(#topPath2)", xlinkHref "#topPath2" ] []
            , use [ fill "#F4F4F4", fillRule "evenodd", xlinkHref "#topPath2" ] []
            ]
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


winterHat4 : Accessory -> HatColor -> FacialHair -> Svg msg
winterHat4 accessory hatColor facialHair =
    g [ transform "translate(-1, 0)" ]
        [ defs []
            [ path [ d "M130,38 C132,45 134,53 134,61 L134,69 L2,69 L2,61 C2,53 4,45 6,38 C-0,25 -1,14 3,5 C10,3 19,5 29,11 C38,4 50,0 63,-7e-15 L73,-7e-15 C86,-9e-15 98,4 107,11 C117,5 126,3 133,5 C137,14 136,25 130,38 Z", id "topPath1" ] []
            , path [ d "M29,11 C19,17 11,27 6,38 C-0,25 -1,14 3,5 C10,3 19,5 29,11 Z M130,38 C125,27 117,17 107,11 C117,5 126,3 133,5 C137,14 136,25 130,38 Z", id "topPath2" ] []
            , path [ d "M22,16 C17,20 14,25 10,30 C8,22 7,16 9,13 C12,12 16,13 22,16 Z M125,30 C122,25 118,20 114,16 C120,13 124,12 127,13 C129,16 128,22 125,30 Z", id "topPath3" ] []
            , filter [ x "-0.7%", y "-1.7%", width "101.4%", height "106.8%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.1 0", type_ "matrix", in_ "shadowOffsetOuter1" ] []
                ]
            , path [ d "M67,61 C83,50 105,44 133,44 C161,44 183,50 199,61 L199,61 C201,63 202,65 202,68 L202,98 C202,101 200,102 198,102 C197,102 197,102 196,102 C179,91 159,86 134,86 C109,86 88,91 70,102 L70,102 C68,103 66,103 65,101 C64,100 64,99 64,99 L64,68 C64,65 65,63 67,61 Z", id "topPath4" ] []
            ]
        , g [ id "hat", strokeWidth "1", fillRule "evenodd", transform "translate(65, 4)" ]
            [ mask [ id "topMask2", fill "white" ]
                [ use [ xlinkHref "#topPath1" ] [] ]
            , use [ id "hat-mask", fill "#D8D8D8", xlinkHref "#topPath1" ] []
            , HatColor.view { maskId = "topMask2", hatColor = hatColor }
            , use [ id "shadow", fillOpacity "0.24", fill "#000000", xlinkHref "#topPath2" ] []
            , use [ id "light", fillOpacity "0.3", fill "#FFFFFF", xlinkHref "#topPath3" ] []
            ]
        , use [ fill "black", fillOpacity "1", A.filter "url(#topFilter1)", xlinkHref "#topPath4" ] []
        , use [ fill "#F4F4F4", fillRule "evenodd", xlinkHref "#topPath4" ] []
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


longHairBigHair : Accessory -> HairColor -> FacialHair -> Svg msg
longHairBigHair accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M222,183 C217,189 212,192 212,198 C212,210 255,245 217,267 L16,267 C-22,245 21,210 21,198 C21,192 16,189 11,183 C5,177 -0,169 0,155 C1,126 31,129 31,109 C31,90 20,82 31,46 C43,10 73,1 116,0 L116,0 C116,0 116,0 117,0 C117,0 117,0 117,0 L117,0 C160,1 190,10 202,46 C213,82 202,90 202,109 C202,129 232,126 233,155 C233,169 228,177 222,183 Z M183,95 C161,84 143,67 131,48 C113,74 77,79 51,95 C51,95 51,96 51,97 L51,110 C51,116 55,121 61,122 C63,142 75,159 93,168 L93,186 L89,186 L89,186 C49,186 17,218 17,258 L17,267 L217,267 L217,258 C217,218 185,186 145,186 L141,186 L141,168 C159,159 171,142 173,122 C179,121 183,116 183,110 L183,97 C183,96 183,96 183,95 Z", id "topPath2" ] []
            , path [ d "M222,183 C217,189 212,192 212,198 C212,210 255,245 217,267 L16,267 C-22,245 21,210 21,198 C21,192 16,189 11,183 C5,177 -0,169 0,155 C1,126 31,129 31,109 C31,90 20,82 31,46 C43,10 73,1 116,0 L116,0 C116,0 116,0 117,0 C117,0 117,0 117,0 L117,0 C160,1 190,10 202,46 C213,82 202,90 202,109 C202,129 232,126 233,155 C233,169 228,177 222,183 Z M93,186 L89,186 L89,186 C49,186 17,218 17,258 L17,267 L217,267 L217,258 C217,218 185,186 145,186 L141,186 L141,140 L93,140 L93,186 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Big-Hair", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(16, 13)" ]
                    [ mask [ id "topMask3", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ fill "#314756", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask3", hairColor = hairColor }
                    ]
                , g [ id "Shadow", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(16, 13)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath3" ] [] ]
                    , g [ id "Shape" ] []
                    , path [ d "M30,115 C28,118 25,123 24,122 C26,120 27,117 27,113 C28,95 15,88 27,53 C28,52 29,50 31,48 C20,82 31,90 31,109 C31,111 31,113 30,115 Z M202,48 C204,50 205,52 206,53 C216,83 209,93 206,106 C206,107 206,108 206,109 C175,98 148,79 131,56 C109,85 58,85 34,111 C34,110 34,110 35,109 C57,80 108,80 131,48 C146,72 173,93 202,104 C202,103 202,102 202,101 C204,87 211,77 202,48 Z", id "Shadow-Mask", fillOpacity "0.16", fill "#000000", A.mask "url(#topMask1)" ] []
                    ]
                , path [ d "M51,122 C73,93 124,93 147,61 C162,85 189,106 218,117 C218,116 218,115 218,114 C221,100 228,90 218,59 C206,23 176,14 133,13 C132,13 132,13 132,13 C89,14 59,23 47,59 C36,95 47,103 47,122 C47,126 46,129 44,131 C45,132 49,125 51,122 Z", id "Light", fillOpacity "0.1", fill "#FFFFFF", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairBob : Accessory -> HairColor -> FacialHair -> Svg msg
longHairBob accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M38,79 L38,111 C38,133 51,153 70,162 L70,175 C50,177 35,182 23,181 C9,180 1,151 1,126 C0,95 29,31 40,18 C48,9 70,1 94,1 C118,1 141,7 149,17 C161,32 187,91 187,126 C187,151 177,176 164,177 C153,178 137,176 118,174 L118,162 C137,153 150,133 150,111 L150,83 C140,78 132,72 124,65 C127,71 131,75 135,79 C108,71 86,58 70,40 C62,57 51,70 38,79 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Bob", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(39, 19)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Combined-Shape", fill "#E6E6E6", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairBun : Accessory -> HairColor -> FacialHair -> Svg msg
longHairBun accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M115,28 C114,29 113,29 112,29 C97,33 88,44 80,60 C77,68 74,77 74,85 C74,89 74,92 75,96 C76,97 77,101 78,98 C78,97 77,95 77,94 C77,92 77,91 78,89 C78,86 78,83 79,81 C81,77 82,72 85,69 C91,61 96,43 133,42 C170,40 182,67 185,73 C189,80 187,89 189,96 C189,99 190,99 191,96 C192,92 192,88 192,83 C191,73 187,47 167,35 C162,32 156,30 151,28 C154,25 156,22 156,17.5 C156,8 146,0 133,0 C120,0 110,8 110,17.5 C110,22 112,25 115,28 Z", id "topPath1" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Long-Hair/Bun", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Short-Hair", stroke "none", fill "#28354B", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


longHairCurly : Accessory -> HairColor -> FacialHair -> Svg msg
longHairCurly accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M49,89 C45,91 42,95 42,100 L42,113 C42,119 46,124 52,125 C54,145 66,162 84,171 L84,189 L80,189 L80,189 C78,189 77,189 75,189 C70,187 66,184 62,180 C57,181 53,182 48,182 C21,182 0,161 0,134 C0,120 6,107 16,98 C11,91 8,82 8,72 C8,50 24,32 45,29 C51,12 67,0 86,0 C94,0 102,2 108,6 C114,2 122,0 130,0 C149,0 165,12 171,29 C192,32 208,50 208,72 C208,82 205,91 200,98 C210,107 216,120 216,134 C216,161 195,182 168,182 C163,182 159,181 154,180 C150,184 146,187 141,189 C139,189 138,189 136,189 L136,189 L132,189 L132,171 C150,162 162,145 164,125 C170,124 174,119 174,113 L174,100 C174,96 172,92 169,90 C167,90 166,89 165,88 C165,88 164,88 164,88 L164,88 C155,82 147,71 141,57 C131,59 120,60 107,60 C95,60 84,59 74,57 C69,71 60,82 52,87 L52,88 C51,88 50,89 49,89 C49,89 49,89 49,89 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Curly", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ path [ d "M106,28 C114,27 123,26 132,26 C142,26 152,27 161,28 C183,39 199,62 199,88 L199,105 C187,105 174,91 166,71 C156,73 145,74 132,74 C120,74 109,73 99,71 C92,91 78,104 67,105 L67,88 L67,88 C67,61 83,38 106,28 Z", id "Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(25, 10)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Curly!", fill "#314756", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairCurvy : Accessory -> HairColor -> FacialHair -> Svg msg
longHairCurvy accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M163,72 C163,73 163,75 163,76 L163,114 C163,136 150,156 131,165 L131,183 L135,183 C137,183 137,183 139,183 C124,210 120,234 137,248 C139,249 140,249 141,249 C143,251 145,252 148,252 C153,253 158,252 163,251 C165,251 167,251 169,251 C172,251 174,251 176,253 C178,254 178,260 172,263 C176,264 181,260 183,257 C184,255 186,252 186,250 C187,246 187,243 186,240 C185,233 182,226 180,220 C179,217 179,214 178,212 C178,211 178,209 178,208 C178,208 178,207 179,207 C183,206 187,204 190,201 C194,198 195,194 197,190 C199,184 200,178 201,171 C201,170 201,168 201,167 C201,166 201,165 201,164 C201,163 201,163 202,163 C207,160 210,155 212,151 C215,145 216,137 213,131 C211,125 207,119 202,116 C200,115 197,113 195,112 C194,111 191,110 190,109 C190,109 191,106 191,105 C191,100 191,95 190,91 C187,81 177,65 174,55 C170,47 165,-0 109,0 C52,0 41,50 34,60 C25,70 17,89 23,107 C17,114 5,124 1,134 C-1,140 -1,147 2,154 C3,157 6,160 8,163 C10,166 12,168 14,171 C16,173 16,173 16,175 C15,179 13,183 11,187 C9,192 6,198 6,204 C6,210 7,227 24,237 C26,238 28,239 30,240 C29,236 31,224 33,220 C33,221 34,223 35,224 C37,226 41,231 45,232 C43,229 41,227 41,223 C45,225 50,227 55,227 C58,227 63,225 66,223 C58,224 50,221 46,215 C46,214 45,213 45,212 C45,210 44,207 45,205 C45,204 45,204 46,204 C46,203 46,203 46,203 C51,199 58,191 62,185 C62,185 62,185 62,185 L63,185 C63,185 63,185 63,185 C68,184 73,183 79,183 L83,183 L83,165 C64,156 51,136 51,114 L51,76 L51,76 C51,74 51,71 51,69 C55,67 59,66 63,65 C68,64 78,62 82,61 L84,58 L85,60 C88,60 100,58 100,58 L101,55 C103,57 104,58 104,58 C106,57 117,57 120,57 C120,57 127,58 129,58 L131,57 L131,58 C133,59 142,62 143,62 L146,61 C147,64 150,64 152,66 C155,68 159,70 163,72 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Curvy", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ path [ d "M101,42 C91,48 82,56 77,65 C74,70 72,74 69,79 C68,81 67,83 66,86 C66,87 65,89 66,90 C66,90 67,90 66,91 C69,91 73,89 75,89 C80,87 85,86 89,84 C94,83 104,81 108,80 L110,77 L111,79 C114,79 126,77 126,77 L127,74 C129,76 130,77 130,77 C132,76 143,76 146,76 C146,76 153,77 155,77 L157,76 L157,77 C159,78 168,81 169,81 L172,80 C173,83 176,83 178,85 C181,88 188,90 191,92 C192,93 193,94 194,95 C195,96 195,96 195,97 C196,97 197,99 197,99 C199,100 187,69 184,65 C180,61 159,33 130,34", id "Top-Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(26, 16)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Hair-Mask", fill "#361A0A", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    , path [ d "M63,184 C70,175 62,148 56,138 C73,130 106,132 156,142 C151,151 149,159 150,166 C145,171 142,177 139,183 L104,192 C82,194 68,192 63,184 Z", id "Shadow", fillOpacity "0.24", fill "#000000", A.mask "url(#topMask2)" ] []
                    ]
                , path [ d "M79,170 C79,170 79,170 79,169 C79,170 79,170 79,170 Z M56,120 C57,127 59,132 61,138 C63,144 65,150 69,155 C72,160 76,164 79,169 C78,168 76,167 76,167 C74,166 73,164 73,163 C71,161 69,158 67,156 C64,151 62,145 59,140 C55,129 51,116 55,104 C54,105 55,107 55,107 C56,109 56,110 56,112 C56,115 56,118 56,120 Z M69,165 C67,163 65,162 63,160 C62,159 61,157 60,155 C58,151 56,147 56,143 C56,143 57,144 57,145 C57,146 58,147 59,148 C60,150 61,152 62,154 C64,158 66,161 69,165 Z M74,183 C75,185 76,187 76,190 C76,191 77,192 77,193 C77,193 77,195 77,195 C75,191 73,186 71,182 C68,178 65,175 61,171 C58,167 54,164 52,159 C50,155 49,151 50,147 C50,149 52,151 52,153 C53,156 54,158 55,161 C57,165 61,168 64,171 C68,175 71,179 74,183 Z M59,174 C60,175 61,176 62,177 C63,179 64,180 64,182 C65,183 65,185 66,186 C63,183 60,180 59,176 C58,175 57,173 56,172 C57,172 59,174 59,174 Z M49,181 C52,185 55,189 58,193 C61,198 62,204 62,210 C62,212 62,215 62,218 C62,219 61,221 61,222 C61,223 60,224 60,225 C60,214 62,204 56,194 C53,189 49,185 46,181 C44,177 41,173 39,169 C40,171 42,172 44,174 C46,176 47,178 49,181 Z M60,225 C60,225 60,225 60,225 C60,225 60,225 60,225 Z M51,202 C51,203 51,204 52,205 C52,206 53,207 53,208 C53,211 53,213 52,216 C50,221 47,225 43,229 C44,227 45,225 46,223 C47,221 48,219 49,217 C51,212 50,207 51,202 Z M42,221 C42,221 42,218 42,217 C43,216 43,215 44,214 C44,214 44,216 44,217 C44,219 43,220 42,221 Z M100,43 C100,43 99,43 99,43 C99,43 100,43 100,43 Z M85,64 C86,63 87,60 88,59 C89,57 90,55 92,53 C94,50 96,46 99,43 C99,44 98,47 98,48 C97,49 96,51 95,53 C92,57 89,61 85,64 Z M84,54 C85,53 86,52 87,51 C87,51 87,53 86,54 C85,55 84,57 83,58 C84,57 84,55 84,54 Z M204,152 C203,152 203,152 203,152 C203,151 203,149 203,148 C203,145 203,143 204,141 C206,137 209,134 213,132 C212,132 211,135 210,136 C209,137 208,139 207,141 C205,144 204,148 204,152 Z M202,130 C202,132 201,133 201,134 C201,135 200,137 199,138 C199,139 197,140 197,141 C197,136 199,132 202,128 C202,128 202,130 202,130 Z M201,166 C205,165 208,167 211,169 C212,170 213,172 214,173 C214,175 214,176 215,177 C213,175 211,173 209,171 C207,169 204,166 201,166 Z M200,176 C200,176 198,176 198,176 C199,176 199,175 200,175 C204,175 210,178 210,182 C210,181 207,180 206,179 C204,178 202,177 200,176 Z M202,184 C203,184 205,185 205,185 C202,185 200,185 197,184 C197,184 199,184 199,184 C200,184 201,184 202,184 Z M191,198 C195,198 200,198 204,199 C206,200 208,200 210,201 C211,202 214,203 215,205 C211,198 203,195 195,196 C194,197 192,198 191,198 Z M190,210 C193,209 196,208 199,208 C201,208 204,208 207,209 C206,209 204,210 203,210 C202,210 200,210 199,210 C198,210 196,210 194,210 C193,210 191,210 190,210 Z M179,227 C180,231 182,235 185,237 C189,240 194,242 196,245 C198,247 198,249 198,251 C198,253 198,254 198,255 C197,255 197,257 197,257 C197,253 197,249 194,246 C191,242 187,241 183,238 C180,236 177,232 177,228 C176,225 177,220 180,218 C179,218 179,220 179,221 C179,223 179,225 179,227 Z M177,243 C177,243 180,244 180,244 C182,245 183,246 184,247 C187,249 188,253 188,256 C188,255 187,253 186,252 C185,251 184,251 184,250 C181,247 179,245 177,243 Z M229,154 C230,155 231,156 232,157 C233,161 234,164 232,168 C233,167 232,165 232,165 C231,163 231,162 230,160 C229,157 228,154 226,152 C227,153 228,153 229,154 Z M172,42 C172,42 172,43 173,44 C173,45 174,45 174,46 C174,48 174,49 173,50 C173,51 172,52 172,52 C172,49 171,46 172,42 Z M179,49 C179,50 179,51 178,53 C178,52 178,50 178,50 C178,49 178,47 178,46 C178,47 179,48 179,49 Z M118,50 C117,52 116,53 114,55 C113,56 111,57 110,58 C114,52 118,47 123,42 C122,43 122,45 121,46 C121,47 120,49 118,50 Z M124,53 C125,53 125,51 126,50 C127,49 127,48 128,48 C128,48 128,50 128,50 C127,51 126,52 124,53 Z", id "Lights", fillOpacity "0.6", fill "#FFFFFF", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairDreads : Accessory -> HairColor -> FacialHair -> Svg msg
longHairDreads accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M86,185 C87,185 88,185 89,185 L89,185 L93,185 L93,167 C81,161 72,151 66,140 C63,131 64,122 63,113 C62,101 63,90 66,78 C68,68 71,62 79,54 C84,49 90,49 97,47 C103,46 109,43 113,38 C122,49 147,45 156,56 C166,70 166,79 168,95 C169,107 167,129 167,142 C161,153 152,161 141,167 L141,185 L145,185 C152,185 158,186 164,188 C162,191 160,194 157,197 C153,201 149,205 145,209 C140,213 135,217 132,222 C131,224 129,227 131,230 C134,232 137,232 140,230 C143,227 146,223 149,220 C146,226 142,235 144,241 C145,243 145,243 147,245 C149,245 149,246 149,247 C149,248 149,248 149,249 C151,251 154,253 157,252 C169,248 155,230 168,225 C170,228 167,235 167,239 C167,243 167,253 174,254 C182,256 179,248 179,244 C180,240 182,235 184,231 C183,235 181,243 187,245 C194,247 193,238 195,235 C195,240 202,253 208,243 C211,238 209,229 208,224 C213,229 216,223 216,219 C218,224 224,237 230,227 C233,220 230,212 227,206 C233,206 232,200 231,198 C230,193 231,193 231,188 C239,193 239,180 238,177 C237,169 231,162 226,155 C223,150 216,142 218,136 C220,138 225,138 226,135 C228,133 226,130 226,128 C224,122 220,118 216,113 C209,103 210,89 209,78 C208,64 205,51 193,40 C186,35 178,30 171,25 C170,23 169,21 167,20 C165,18 165,18 163,16 C160,12 157,8 151,7 C147,7 141,11 137,10 C134,10 132,5 130,4 C126,2 123,3 119,4 C113,6 108,7 102,4 C98,3 94,-1 88,0 C84,1 83,5 80,7 C78,10 79,9 75,9 C72,10 69,11 66,13 C61,17 65,23 61,26 C59,28 55,29 53,31 C50,33 48,36 47,38 C43,43 41,48 38,53 C33,63 29,73 27,83 C26,89 24,94 23,99 C23,103 23,108 22,112 C20,117 16,121 13,126 C10,132 8,138 8,144 C7,151 9,157 10,163 C10,167 9,167 7,171 C5,174 3,176 2,179 C-1,185 -1,190 3,195 C6,199 16,202 15,195 C15,191 10,190 11,186 C12,183 14,181 18,180 C20,179 22,179 23,182 C24,184 22,190 22,192 C22,193 22,194 22,195 C21,202 21,208 17,214 C15,218 10,223 15,227 C19,230 26,228 29,225 C32,229 32,233 30,238 C30,241 28,245 31,247 C35,250 42,245 46,243 C48,247 49,262 57,253 C59,251 63,248 64,245 C65,239 64,234 64,228 C67,235 68,238 70,245 C71,250 71,264 80,262 C87,261 83,252 82,248 C80,241 79,238 78,231 C80,236 82,240 85,245 C87,250 98,259 101,255 C104,251 96,245 95,241 C91,231 87,221 86,210 C85,205 86,200 87,195 C87,192 86,189 86,185 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Dreads", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "template-for-hairstyles", strokeWidth "1", fillRule "evenodd", transform "translate(63, 87)" ] []
                , FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(16, 14)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "No-Woman", fill "#8D5A5A", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                    , path [ d "M86,185 C87,185 88,185 89,185 L89,185 L93,185 L93,167 C81,161 72,151 66,140 C67,141 67,143 68,145 C74,156 81,167 84,180 C85,181 85,183 86,185 Z M164,188 C158,186 152,185 145,185 L145,185 L141,185 L141,167 C152,161 161,153 167,142 C166,145 166,148 167,151 C168,159 171,166 170,175 C169,179 167,184 164,188 Z", id "Shadows", fillOpacity "0.24", fill "#000000", A.mask "url(#topMask1)" ] []
                    , path [ d "M49,108 C49,106 47,98 50,96 C52,95 52,104 52,105 C52,107 53,118 51,118 C49,118 49,110 49,108 Z M58,166 C58,167 57,167 56,167 C55,166 56,164 56,163 C55,162 55,156 56,155 C59,152 58,165 58,166 Z M32,179 C34,179 32,141 29,141 C27,141 31,179 32,179 Z M34,199 C32,199 32,207 34,208 C36,209 37,199 34,199 Z M50,202 C50,203 48,203 48,203 C47,202 47,199 47,199 C47,196 45,188 47,186 C49,185 49,187 49,188 C51,192 50,198 50,202 Z M190,122 C190,124 191,133 190,134 C187,135 188,129 188,129 C188,121 187,114 186,106 C186,105 184,94 186,93 C188,92 188,96 188,97 C189,105 190,114 190,122 Z M187,156 C184,155 183,164 184,165 C186,166 190,156 187,156 Z M187,193 C186,193 177,209 178,210 C179,212 191,194 187,193 Z M166,201 C165,200 157,212 159,212 C161,213 168,202 166,201 Z M208,157 C206,157 206,169 208,170 C210,171 211,157 208,157 Z M178,49 C178,48 171,40 176,41 C178,42 181,49 182,51 C183,52 186,57 183,57 C182,57 179,50 178,49 Z M155,33 C154,34 154,34 155,34 C156,34 156,34 155,33 Z M71,41 C69,43 61,54 58,54 C54,54 63,45 64,44 C64,43 66,41 68,40 C69,40 73,39 71,41 Z M43,70 C41,70 37,80 39,82 C41,83 46,70 43,70 Z M68,189 C69,190 73,200 72,201 C70,203 70,201 69,199 C68,197 65,191 65,188 C66,185 68,188 68,189 Z M60,212 C58,212 58,222 59,222 C61,223 63,212 60,212 Z M222,203 C222,204 224,209 221,208 C220,208 219,204 219,202 C218,198 214,193 213,189 C213,185 215,187 217,190 C219,194 221,199 222,203 Z M202,203 C200,203 200,214 201,214 C203,215 205,203 202,203 Z M208,115 C210,114 205,101 203,101 C200,102 206,115 208,115 Z M181,171 C181,171 181,171 181,172 C182,171 182,171 181,171 Z M157,226 C158,226 158,225 157,225 C156,225 156,226 157,226 Z M59,171 C59,169 56,170 56,172 C56,175 59,173 59,171 Z M53,123 C52,123 51,124 53,124 C53,124 54,123 53,123 Z M33,185 C33,183 32,185 32,185 C32,185 33,187 33,185 Z M38,84 C35,84 36,90 37,90 C40,91 40,84 38,84 Z M50,208 C48,208 48,216 49,217 C52,217 53,208 50,208 Z M31,214 C31,214 31,215 31,215 C32,215 32,214 31,214 Z M201,217 C199,217 199,227 201,227 C203,228 204,217 201,217 Z M178,226 C176,226 174,234 175,234 C177,236 180,227 178,226 Z M157,233 C155,233 156,237 157,238 C159,238 160,233 157,233 Z M86,20 C85,20 74,24 78,26 C81,27 91,20 86,20 Z", id "Highlights", fillOpacity "0.3", fill "#FFFFFF", A.mask "url(#topMask1)" ] []
                    ]
                , Accessory.view accessory
                , g [ id "Group-74", strokeWidth "1", fillRule "evenodd", transform "translate(44, 33)" ] []
                ]
            ]
        ]


longHairFro : Accessory -> HairColor -> FacialHair -> Svg msg
longHairFro accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd", transform "translate(-1, 0)" ]
        [ defs []
            [ path [ d "M181,104 C182,106 182,108 182,110 L182,123 C182,129 178,134 172,135 C170,155 158,172 140,181 L140,190 C144,192 148,193 152.5,193 C160,193 167,190 173,185 C174,185 176,185 177,185 C195,185 211,173 219,155 C225,150 229,141 229,132 C229,130 229,128 229,127 C231,120 232,113 232,106 C232,93 228,81 222,72 C222,71 222,71 222,70 C222,59 216,50 208,45 C201,27 186,15 168,14 C163,9 157,6 150.5,6 C150,6 149,6 148,6 C138,2 127,0 116,0 C105,0 94,2 84,6 C83,6 82,6 81.5,6 C75,6 69,9 64,14 C46,15 31,27 24,45 C16,50 10,59 10,70 C10,71 10,71 10,72 C4,81 0,93 0,106 C0,113 1,120 3,127 C3,128 3,130 3,132 C3,141 7,150 13,155 C21,173 37,185 55,185 C56,185 58,185 59,185 C65,190 72,193 79.5,193 C84,193 88,192 92,190 L92,181 C74,172 62,155 60,135 C54,134 50,129 50,123 L50,110 C50,108 50,106 51,104 C54,104 57,101 60,98 C60,98 60,98 60,98 L60,98 C67,91 74,78 77,64 C88,66 102,67 116,67 C131,67 144,66 155,64 C158,78 165,91 172,98 L172,98 C172,98 172,98 172,98 C175,101 178,104 181,104 Z", id "topPath2" ] []
            ]
        , path [ d "M67,110 C76,109 89,89 94,69 C105,71 119,72 133,72 C148,72 161,71 172,69 C177,89 190,109 199,110 L199,89 C199,66 187,46 170,34 C169,37 169,39 169,42 C158,41 146,40 133,40 C120,40 108,41 97,42 C97,39 97,37 96,34 C79,46 67,66 67,89 L67,89 L67,110 Z", id "Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
        , g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(17, 0)" ]
            [ mask [ id "topMask2", fill "white" ]
                [ use [ xlinkHref "#topPath2" ] [] ]
            , use [ fill "#314756", xlinkHref "#topPath2" ] []
            , HairColor.view { maskId = "topMask2", hairColor = hairColor }
            ]
        , FacialHair.view facialHair
        , Accessory.view accessory
        ]


longHairFroBand : Accessory -> HairColor -> FacialHair -> Svg msg
longHairFroBand accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M80,74 C78,80 77,86 77,92 L77,92 L77,98 C71,99 67,104 67,110 L67,123 C67,129 71,134 77,135 C79,155 91,172 109,181 L109,192 C104,194 99,195 93.5,195 C85,195 77,192 70,187 C68,187 66,187 64.5,187 C43,187 25,175 16,157 C9,152 4,143 4,133.5 C4,131 4,129 5,127 C2,121 1,114 1,107 C1,94 5,82 12,73 C12,72 12,71 12,70.5 C12,59 19,49 28,45 C37,27 55,14 76,13 C81,8 88,5 95.5,5 C98,5 100,5 102,6 C112,2 122,0 133,0 C143,0 153,2 162,5 C164,5 165,5 166.5,5 C174,5 181,8 186,13 C207,14 225,27 234,45 C243,49 250,59 250,70.5 C250,71 250,72 250,73 C257,82 261,94 261,107 C261,114 260,121 257,127 C258,129 258,131 258,133.5 C258,143 253,152 246,157 C237,175 219,187 197.5,187 C196,187 194,187 192,187 C185,192 177,195 168.5,195 C164,195 161,194 157,193 L157,181 C175,172 187,155 189,135 C195,134 199,129 199,123 L199,110 C199,104 195,99 189,98 L189,92 C189,87 188,81 187,76 L188,89 L177,65 L132,46 L102,56 L80,76 L80,74 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Fro-+-Band", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ mask [ id "topMask2", fill "white" ]
                    [ use [ xlinkHref "#topPath2" ] [] ]
                , use [ id "Hair", stroke "none", fill "#314756", fillRule "evenodd", xlinkHref "#topPath2" ] []
                , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                , path [ d "M77,99 C76,96 76,94 76,91 C76,62 101,39 132.5,39 C164,39 189,62 189,91 C189,94 189,96 188,99 C184,74 161,55 132.5,55 C104,55 81,74 77,99 Z", id "Band", stroke "none", fill "#92D9FF", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairNotTooLong : Accessory -> HairColor -> FacialHair -> Svg msg
longHairNotTooLong accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M59,102 C59,119 59,145 59,182 C59,186 63,190 67,190 L109,190 L109,181 C91,172 79,155 77,135 C71,134 67,129 67,123 L67,110 C67,107 68,103 71,101 C82,99 95,94 107,86 C119,79 130,71 138,63 C134,71 130,78 125,84 C138,78 147,69 151,57 C152,58 152,59 152,60 C163,83 180,99 198,104 C199,107 199,108 199,110 L199,123 C199,129 195,134 189,135 C187,155 175,172 157,181 L157,190 L175,190 C193,190 207,176 207,158 C207,134 207,116 207,104 C207,104 207,104 207,104 C207,91 207,84 206,82 C202,46 171,18 133,18 C97,18 67,44 60,78 C54,78 50,84 50,90.5 C50,95 52,99 55,101 C56,102 57,102 59,102 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Long-but-not-too-long", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Behind", strokeWidth "1", fillRule "evenodd" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Combined-Shape", fill "#944F23", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , g [ id "Top", opacity "0.43", strokeWidth "1", fillRule "evenodd", transform "translate(50, 18)", fillOpacity "0.16" ]
                    [ path [ d "M12,85 C26,83 42,78 57,68 C69,61 80,53 88,45 C84,53 80,60 75,66 C88,60 97,51 101,39 C102,40 102,41 102,42 C114,68 136,86 157,88 L157,88 L157,74 C157,33 124,0 83,0 C47,0 17,26 10,60 C10,60 10,60 10,60 C4,60 0,66 0,72.5 C0,79 4,84 9,85 L9,85 C9,85 10,85 10,85 C10,85 10,85 10,85 C11,85 11,85 12,85 Z", id "Combined-Shape", fill "#FFFFFF" ] [] ]
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairMiaWallace : Accessory -> HairColor -> FacialHair -> Svg msg
longHairMiaWallace accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M149,69 C149,70 149,72 149,73 L149,111 C149,133 136,153 117,162 L117,170 C135,172 153,174 163,177 C173,163 186,151 186,126 C186,107 158,30 146,15 C138,5 117,1 93,1 C69,1 49,7 41,16 C30,29 -0,107 0,126 C0,151 13,163 23,177 C33,174 51,172 69,170 L69,162 C50,153 37,133 37,111 L37,73 L37,73 C37,72 37,70 37,69 L65,69 L69,48 L72,69 L149,69 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Mia-Wallace", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ path [ d "M69,76 C82,43 96,27 110,27 C111,27 139,26 158,26 C179,36 193,55 193,78 L193,93 L110,93 L107,70 L103,93 L69,93 L69,78 C69,77 69,77 69,76 L69,76 Z", id "Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(40, 19)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Combined-Shape", fill "#E6E6E6", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairStraight : Accessory -> HairColor -> FacialHair -> Svg msg
longHairStraight accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M134,81 C137,83 140,87 140,92 L140,105 C140,111 136,116 130,117 C128,137 116,154 98,163 L98,163 L98,181 L102,181 C119,181 136,187 148,198 L148,74 C148,54 140,35 126,22 C113,8 94,0 74,0 C33,7e-15 -7e-15,33 0,74 L0,258 C14,256 24,244 24,230 L24,184 C31,182 38,181 46,181 L50,181 L50,163 C39,157 30,148 24,137 L24,75 C33,72 43,68 52,62 C68,54 80,43 89,32 C91,38 93,43 96,48 C105,63 117,74 130,80 L130,80 C130,80 131,80 131,80 C132,81 133,81 134,81 Z", id "topPath2" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Straight", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(59, 18)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Mask-Hair", fill "#944F23", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , path [ d "M193,99 C197,101 202,102 207,102 L207,102 L207,92 C207,72 199,53 185,40 C199,53 207,72 207,92 L207,216 C195,205 178,199 161,199 L157,199 L157,181 L157,181 C175,172 187,155 189,135 C195,134 199,129 199,123 L199,110 C199,105 196,101 193,99 Z M190,98 C190,98 189,98 189,98 L189,98 C189,98 190,98 190,98 Z M83,155 C89,166 98,175 109,181 L109,199 L105,199 C97,199 90,200 83,202 L83,155 Z", id "Shadow", fillOpacity "0.24", fill "#000000", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairStraight2 : Accessory -> HairColor -> FacialHair -> Svg msg
longHairStraight2 accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M21,158 L21,69 C21,66 21,62 22,59 C25,39 37,23 50,13 C70,-2 103,-6 115,12 C124,8 137,11 146,20 C156,29 163,50 159,67 C159,68 159,70 159,71 L159,93 C158,88 154,84 149,83 L149,83 C143,61 125,52 114,42 C98,61 45,61 27,98 L27,108 C27,114 31,119 37,120 C39,140 51,157 69,166 L69,166 C72,210 62,265 0,248 C14,240 21,189 21,158 Z M117,166 C135,157 147,140 149,120 C154,119 158,115 159,110 L159,111 L159,111 C159,127 163,143 170,157 L197,210 C204,223 202,239 193,250 C190,213 159,184 121,184 L121,184 L117,184 L117,166 Z", id "topPath2" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Straight", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(40, 15)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ fill "#272C2E", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , path [ d "M67,113 C85,81 138,81 154,64 C165,73 183,79 189,98 C183,76 165,67 154,57 C138,76 85,76 67,113 Z", id "Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairStraightStrand : Accessory -> HairColor -> FacialHair -> Svg msg
longHairStraightStrand accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M8,89 C8,90 8,91 8,92 L8,105 C8,111 12,116 18,117 C20,137 32,154 50,163 L50,181 L46,181 L46,181 C30,181 16,186 4,194 C1,187 0,179 1e-14,170 L0,74 L0,74 C-5e-15,33 33,0 74,0 L74,0 L74,0 C115,0 148,33 148,74 L148,170 C148,179 147,187 144,194 C132,186 118,181 102,181 L102,181 L98,181 L98,163 C116,154 128,137 130,117 C136,116 140,111 140,105 L140,92 C140,90 140,89 139,87 C126,85 111,80 97,71 C85,64 75,56 67,48 C70,56 74,63 79,69 C66,63 58,54 53,42 C53,43 52,44 52,45 C42,67 26,83 8,89 Z", id "topPath2" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Long-Hair/Straight-+-Strand", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Hair", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(59, 18)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ fill "#ECC797", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , path [ d "M59,102 L59,109 C79,106 100,88 111,63 C111,62 112,61 112,60 C116,71 123,79 133,84 C135,86 136,89 138,91 C125,85 117,76 112,64 C112,65 111,66 111,67 C100,92 79,110 59,113 L59,102 Z M207,101 L207,110 C192,109 174,104 156,93 C146,88 137,81 130,74 C128,71 127,68 126,66 C134,74 144,82 156,89 C174,100 192,105 207,106 L207,101 Z", id "Shadow", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


shortHairDreads01 : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairDreads01 accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath2" ] []
            , path [ d "M186,74 C188,75 189,85 189,89 C189,91 189,100 187,99 C186,99 185,94 185,91 C184,89 183,79 180,75 C180,74 178,72 179,71 C180,70 181,71 182,71 C183,72 186,74 186,74 Z M187,71 C186,72 181,69 179,68 C161,58 157,55 129,55 C101,56 82,69 81,70 C80,71 79,74 78,81 C77,88 78,100 76,100 C73,100 73,76 74,67 C74,66 74,63 74,62 C74,61 72,61 72,59 C72,57 75,58 76,57 C77,55 75,54 74,52 C73,50 75,49 77,48 C79,48 79,48 80,47 C78,45 78,43 80,42 C82,41 85,42 86,41 C86,41 86,40 86,40 C88,37 88,36 87,33 C87,31 87,29 90,29 C91,29 93,30 94,31 C96,31 95,32 96,31 C99,29 97,26 99,24 C101,22 103,26 105,26 C109,26 108,22 110,21 C113,19 114,23 115,23 C117,23 120,20 121,19 C125,18 128,23 132,22 C134,21 135,21 138,23 C140,24 141,23 144,23 C146,23 147,25 149,25 C150,25 150,24 151,24 C155,24 155,29 157,30 C160,31 162,29 165,29 C170,28 167,34 167,37 C169,37 171,35 173,36 C177,36 176,40 175,42 C177,42 184,40 185,43 C186,45 184,47 184,49 C184,52 186,54 187,56 C188,59 189,68 187,71 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/Dreads-01", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(1, 0)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath3" ] [] ]
                    , use [ id "Dreads-With-Cut", fill "#2E3257", xlinkHref "#topPath3" ] []
                    , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                    ]
                , Accessory.view accessory
                ]
            ]
        ]


shortHairDreads02 : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairDreads02 accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath2" ] []
            , path [ d "M154,99 C158,101 161,105 161,110 L161,123 C161,128 158,133 153,134 C152,145 148,155 142,164 C142,164 142,165 142,166 C143,169 142,172 144,175 C144,176 145,177 145,177 C146,179 145,182 147,182 C151,182 149,176 148,175 C147,172 146,171 146,168 C147,169 153,171 155,170 C160,167 148,165 148,164 C149,163 151,162 153,160 C154,158 155,155 157,155 C159,155 162,158 163,156 C164,154 162,154 161,153 C160,152 159,153 160,151 C161,152 162,152 163,150 C163,149 162,148 162,147 C162,148 163,142 163,142 C163,141 166,141 168,142 C170,142 170,142 171,144 C172,146 174,149 175,145 C175,144 174,141 173,140 C173,139 171,139 171,138 C170,136 173,132 172,129 C173,129 176,136 177,131 C178,128 171,122 174,121 C176,120 179,123 179,125 C180,126 179,129 180,130 C183,134 184,127 183,126 C183,122 181,119 178,117 C179,115 177,114 176,113 C178,111 188,113 186,109 C185,108 183,108 182,107 C180,106 177,104 176,102 C178,101 183,102 183,99 C182,96 177,97 175,97 C177,96 180,97 181,94 C181,91 177,91 176,92 C175,88 181,86 183,83 C183,82 184,82 184,81 C182,78 179,82 178,83 C179,81 181,74 181,73 C180,70 178,70 177,72 C176,73 176,77 175,78 C173,77 173,79 173,76 C173,75 175,72 176,70 C176,69 177,66 176,65 C175,62 173,66 173,68 C172,64 175,62 176,58 C176,56 178,51 175,50 C172,48 173,55 172,57 C172,58 172,61 170,61 C170,62 167,62 167,62 C166,60 170,55 171,53 C171,52 170,50 169,50 C168,50 166,52 166,51 C165,51 167,44 167,43 C167,41 167,35 163,38 C163,35 164,33 164,30 C164,28 165,27 164,26 C161,25 160,28 160,29 C159,32 161,37 157,37 C152,37 155,32 155,29 C155,27 154,22 152,26 C151,27 151,31 151,33 C150,32 152,28 151,27 C149,25 147,28 146,29 C146,27 145,26 145,25 C145,22 147,18 145,16 C143,14 141,17 141,19 C140,21 140,22 138,23 C138,20 135,14 137,12 C137,11 138,12 139,11 C140,9 138,8 137,8 C130,7 135,17 133,19 C132,18 133,17 132,16 C130,14 129,14 127,15 C127,13 129,2 124,7 C122,8 123,11 122,12 C121,13 120,16 119,17 C118,15 119,12 119,10 C120,9 122,4 122,3 C120,-1 116,6 114,7 C113,8 106,13 104,11 C104,11 104,9 103,8 C103,8 101,8 100,8 C101,6 100,4 98,5 C96,5 97,9 96,10 C93,12 90,8 87,8 C88,6 91,-0 86,2 C85,2 84,5 84,6 C83,9 83,10 80,11 C80,9 80,7 81,5 C81,4 85,0 81,0 C76,-0 77,8 76,10 C72,8 69,12 67,15 C67,13 68,-1 64,3 C63,5 64,7 64,8 C64,9 63,10 63,12 C62,13 61,15 60,17 C58,19 59,19 57,18 C55,16 54,11 54,8 C54,6 55,2 51,3 C48,4 50,11 50,13 C50,16 51,19 50,21 C47,18 47,25 46,26 C45,28 43,29 42,30 C41,27 44,25 44,22 C42,18 39,24 38,25 C38,26 36,32 35,32 C34,33 27,30 27,29 C25,28 26,25 24,24 C20,22 22,30 23,31 C26,36 27,41 26,46 C25,46 24,45 24,44 C23,42 23,40 22,39 C19,36 18,42 19,44 C19,47 21,48 22,51 C24,54 22,57 22,60 C18,57 3,60 7,65 C9,68 11,63 14,63 C18,63 20,68 20,72 C19,70 17,68 16,70 C15,72 17,74 17,76 C16,76 12,73 11,74 C8,75 12,78 14,79 C18,80 21,82 22,87 C19,87 20,86 18,84 C17,83 17,84 15,84 C13,83 10,82 7,83 C5,84 2,87 1,89 C0,92 2,93 4,91 C7,89 7,86 11,86 C12,86 14,87 15,88 C16,89 17,91 17,92 C18,93 20,94 20,95 C22,99 19,102 17,104 C17,104 14,103 13,103 C10,102 9,103 11,106 C12,107 13,107 13,108 C14,109 15,110 15,111 C17,113 18,114 20,116 C19,116 19,115 19,115 C19,115 18,115 17,115 C16,115 17,117 16,117 C13,118 9,114 6,113 C5,113 4,114 4,116 C5,118 7,119 8,119 C12,121 15,122 18,121 C21,123 24,124 28,124 C26,125 24,127 23,129 C22,128 19,122 18,127 C17,130 21,134 24,135 C21,136 19,136 16,136 C15,135 12,134 13,137 C14,141 21,140 23,139 C24,138 13,151 20,148 C23,148 23,143 26,143 C29,142 30,146 32,149 C33,150 37,153 37,154 C37,155 34,155 34,157 C33,158 33,159 34,161 C36,163 39,163 41,164 C44,166 45,167 47,171 C44,171 37,178 41,179 C43,180 43,178 43,177 C44,177 44,176 44,176 C45,175 45,175 46,176 C46,176 47,176 48,176 C49,176 51,175 52,174 C53,174 54,174 55,173 C55,173 55,170 55,170 C56,169 56,170 57,169 C48,160 42,148 41,134 C36,133 33,128 33,123 L33,110 C33,105 36,101 40,99 C41,99 42,99 42,98 C42,97 45,70 55,63 C59,61 78,61 97,61 C116,61 135,61 139,63 C149,70 152,97 152,98 C152,99 153,99 154,99 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/Dreads-02", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(36, 0)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath3" ] [] ]
                    , use [ id "Dreads", fill "#2E3257", xlinkHref "#topPath3" ] []
                    , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                    ]
                , Accessory.view accessory
                ]
            ]
        ]


shortHairFrizzle : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairFrizzle accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M91,55 L175,55 C193,45 197,26 184,10 C181,6 175,22 158,23 C141,24 143,16 124,19 C106,22 108,36 96,40 C89,42 87,47 91,55 Z", id "topPath1" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Short-Hair/Frizzle", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Hair-Maks", stroke "none", fill "#252E32", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


shortHairShaggyMullet : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairShaggyMullet accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M175,167 C176,169 177,171 179,173 C180,174 183,174 185,174 C187,174 188,174 190,174 C191,174 191,175 191,175 C191,175 190,175 190,176 C189,176 188,177 187,177 C184,179 182,180 179,180 C177,180 175,180 173,180 C174,181 174,182 175,182 C177,184 180,183 182,183 C184,183 186,183 187,183 C188,183 189,184 188,185 C188,185 188,185 188,185 C186,186 185,187 184,187 C181,189 179,190 176,190 C170,191 165,190 160,186 C159,185 158,184 157,183 L157,181 C164,177 170,173 175,167 Z M81,152 C81,153 80,155 79,156 C74,165 68,177 56,178 C55,178 55,179 56,180 C67,188 92,193 101,192 C104,191 107,190 109,190 L109,181 C97,175 87,164 81,152 Z M196,69 C196,74 195,80 194,85 C193,90 190,94 189,99 C185,85 169,80 160,71 C162,75 165,78 167,82 C158,76 149,68 145,58 C145,63 143,68 139,72 C136,76 132,80 127,82 C129,76 131,70 133,65 C131,67 125,78 123,81 C121,84 119,86 117,89 C116,90 115,91 114,92 C114,93 113,94 113,94 C112,94 111,96 112,95 C110,98 106,100 103,102 C101,104 97,106 94,108 C87,111 80,112 72,111 C73,111 76,110 77,110 C79,109 80,108 82,108 C85,106 88,104 91,101 C88,102 86,104 84,106 C81,107 79,107 76,107 C71,108 64,107 60,104 C54,101 51,95 50,89 C48,82 49,74 53,68 C53,70 58,71 61,70 C71,69 76,32 101,26 C121,20 136,29 137,30 C138,31 139,31 140,30 C147,29 154,28 160,29 C167,31 173,34 178,38 C187,45 196,56 196,69 Z", id "topPath2" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/Shaggy-Mullet", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ Accessory.view accessory
                , mask [ id "topMask2", fill "white" ]
                    [ use [ xlinkHref "#topPath2" ] [] ]
                , use [ id "Hair", stroke "none", fill "#1D2633", fillRule "evenodd", xlinkHref "#topPath2" ] []
                , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                , path [ d "M175,167 C176,169 177,171 179,173 C180,174 183,174 185,174 C187,174 188,174 190,174 C191,174 191,175 191,175 C191,175 190,175 190,176 C189,176 188,177 187,177 C184,179 182,180 179,180 C177,180 175,180 173,180 C174,181 174,182 175,182 C177,184 180,183 182,183 C184,183 186,183 187,183 C188,183 189,184 188,185 C188,185 188,185 188,185 C186,186 185,187 184,187 C181,189 179,190 176,190 C170,191 165,190 160,186 C159,185 158,184 157,183 L157,181 C164,177 170,173 175,167 Z M81,152 C81,153 80,155 79,156 C74,165 68,177 56,178 C55,178 55,179 56,180 C67,188 92,193 101,192 C104,191 107,190 109,190 L109,181 C97,175 87,164 81,152 Z", id "Shadow", stroke "none", fillOpacity "0.16", fill "#000000", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                ]
            ]
        ]


shortHairShortCurly : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairShortCurly accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M94,52 C94,52 94,52 93,52 C94,52 95,52 94,52 M86,36 C86,36 86,36 86,36 M194,71 C194,67 193,64 192,61 C192,58 191,56 190,53 C189,52 188,50 188,48 C187,47 189,45 189,43 C189,41 189,39 189,38 C188,34 185,30 181,29 C180,29 178,29 177,28 C176,28 176,26 175,25 C173,22 170,21 167,21 C164,22 166,22 164,21 C163,20 162,19 161,18 C160,17 158,15 156,15 C152,12 147,10 142,10 C132,8 122,9 113,12 C109,13 104,15 100,17 C98,17 97,18 96,18 C93,19 90,19 87,20 C79,24 75,33 78,41 C79,43 80,44 81,46 C83,47 83,47 82,49 C80,52 78,55 77,58 C73,67 73,76 73,85 C73,88 73,91 74,94 C74,96 74,98 75,99 C76,100 76,100 77,100 C79,99 78,98 78,97 C78,91 78,86 79,80 C81,76 82,72 84,68 C87,63 90,59 94,55 C95,54 95,53 97,53 C98,53 99,54 100,54 C102,55 104,55 106,55 C110,56 113,56 117,56 C125,56 132,55 139,53 C144,52 148,50 153,48 C153,48 154,47 154,47 C154,47 156,49 156,49 C159,51 161,52 164,53 C167,55 164,52 165,55 C166,55 166,56 166,57 C168,59 169,61 171,63 C173,64 176,65 177,67 C178,68 178,70 179,72 C180,76 183,80 185,84 C186,87 188,90 189,93 C189,94 187,102 190,100 C191,99 192,95 192,95 C193,92 193,89 193,87 C194,81 194,76 194,71", id "topPath1" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Short-Hair/Short-Curly", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Short-Hair", stroke "none", fill "#28354B", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


shortHairShortFlat : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairShortFlat accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M180,40 C177,37 174,35 171,32 C170,32 170,31 169,31 C169,31 167,29 167,29 C167,28 167,29 167,28 C167,26 170,22 168,21 C167,21 165,22 164,22 C162,23 160,23 158,24 C159,22 161,18 158,19 C155,20 153,22 150,23 C151,22 154,17 151,17 C150,17 147,19 146,19 C143,20 140,21 137,22 C126,24 112,23 102,28 C94,32 86,38 82,46 C77,53 76,62 75,70 C74,77 74,83 74,89 C74,91 75,101 78,98 C79,97 79,91 79,89 C80,85 81,81 82,77 C84,71 87,63 92,59 C96,56 98,52 102,49 C103,48 102,48 105,48 C106,48 108,48 110,48 C113,48 117,48 121,48 C129,48 136,48 144,48 C147,48 151,48 154,47 C156,47 159,46 161,47 C162,48 164,50 165,52 C167,54 170,56 173,59 C179,63 182,69 184,76 C185,83 185,90 187,97 C187,98 188,100 190,98 C190,98 190,96 190,95 C190,90 191,87 191,82 C191,69 190,50 180,40 Z", id "topPath1" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Short-Hair/Short-Flat", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Short-Hair", stroke "none", fill "#1F3140", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


shortHairShortRound : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairShortRound accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M167,35 C147,23 127,25 112,29 C97,33 88,44 80,60 C77,68 74,77 74,85 C74,89 74,92 75,96 C76,97 77,101 78,98 C78,97 77,95 77,94 C77,92 77,91 78,89 C78,86 78,83 79,81 C81,77 82,72 85,69 C91,61 102,60 111,55 C110,57 107,59 108,61 C109,62 112,61 113,61 C116,61 120,61 123,60 C128,60 133,58 138,56 C142,55 147,53 150,50 C155,55 161,60 167,63 C173,66 182,67 185,73 C189,80 187,89 189,96 C189,99 190,99 191,96 C192,92 192,88 192,83 C191,73 187,47 167,35 Z", id "topPath1" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Short-Hair/Short-Round", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Short-Hair", stroke "none", fill "#28354B", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


shortHairShortWaved : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairShortWaved accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M184,39 C189,34 190,24 187,17 C184,9 176,8 169,12 C162,15 156,16 148,15 C141,13 134,11 126,10 C114,9 102,14 94,23 C92,25 91,27 89,29 C89,31 87,32 87,34 C87,35 87,37 87,38 C86,39 84,40 84,40 C82,41 81,43 79,44 C77,47 75,51 74,55 C70,68 70,84 75,97 C76,98 78,102 79,98 C79,98 79,95 79,94 C79,92 80,74 87,64 C89,60 99,48 101,48 C102,50 113,60 141,59 C153,59 163,53 166,50 C167,56 179,64 180,68 C186,78 187,98 189,98 C191,98 192,93 193,92 C196,84 196,75 196,67 C195,57 191,46 184,39 Z", id "topPath1" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Short-Hair/Short-Waved", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , mask [ id "topMask1", fill "white" ]
                    [ use [ xlinkHref "#topPath1" ] [] ]
                , use [ id "Short-Hair", stroke "none", fill "#28354B", fillRule "evenodd", xlinkHref "#topPath1" ] []
                , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                , Accessory.view accessory
                ]
            ]
        ]


shortHairSides : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairSides accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath2" ] []
            , path [ d "M6,28 C1,28 0,27 0,23 C1e-16,17 4,7 8,2 C9,-0 12,-1 11,3 C8,11 11,28 6,28 Z M120,28 C115,28 118,11 115,3 C114,-1 117,-0 118,2 C122,7 126,17 126,23 C126,27 125,28 120,28 Z", id "topPath3" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/Sides", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(70, 74)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath3" ] [] ]
                    , use [ id "Sides", fill "#9E7A7A", xlinkHref "#topPath3" ] []
                    , HairColor.view { maskId = "topMask1", hairColor = hairColor }
                    ]
                , Accessory.view accessory
                ]
            ]
        ]


shortHairTheCaesar : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairTheCaesar accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M1,64 C1,65 3,65 3,64 C3,62 6,35 16,28 C20,25 39,23 58,23 C77,23 96,26 100,28 C110,35 113,62 113,64 C113,65 115,65 115,64 C116,54 115,0 58,1 C1,2 0,54 1,64 Z", id "topPath2" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/The-Caesar", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(75, 34)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Caesar", fill "#28354B", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , Accessory.view accessory
                ]
            ]
        ]


shortHairTheCaesarSidePart : Accessory -> HairColor -> FacialHair -> Svg msg
shortHairTheCaesarSidePart accessory hairColor facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath1", x "0", y "0", width "264", height "280" ] []
            , path [ d "M82,24 C75,24 67,23 58,23 C39,23 20,25 16,28 C6,35 3,62 3,64 C3,65 1,65 1,64 C0,54 1,2 58,1 C115,0 116,54 115,64 C115,65 113,65 113,64 C113,62 110,35 100,28 C98,27 93,26 85,25 L89,16 L82,24 Z", id "topPath2" ] []
            , filter [ x "-0.8%", y "-2.0%", width "101.5%", height "108.0%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath1" ] [] ]
        , g [ id "Top/Short-Hair/The-Caesar-+-Side-Part", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ FacialHair.view facialHair
                , g [ id "Hair", strokeWidth "1", fillRule "evenodd", transform "translate(75, 34)" ]
                    [ mask [ id "topMask2", fill "white" ]
                        [ use [ xlinkHref "#topPath2" ] [] ]
                    , use [ id "Caesar", fill "#28354B", xlinkHref "#topPath2" ] []
                    , HairColor.view { maskId = "topMask2", hairColor = hairColor }
                    ]
                , Accessory.view accessory
                ]
            ]
        ]


longHairFrida : Accessory -> FacialHair -> Svg msg
longHairFrida accessory facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , filter [ x "-3.8%", y "-6.7%", width "107.7%", height "126.7%", filterUnits "objectBoundingBox", id "topFilter5" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-6.7%", y "-3.4%", width "113.3%", height "113.8%", filterUnits "objectBoundingBox", id "topFilter6" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-6.7%", y "-3.4%", width "113.3%", height "113.8%", filterUnits "objectBoundingBox", id "topFilter7" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-3.8%", y "-3.8%", width "107.7%", height "115.4%", filterUnits "objectBoundingBox", id "topFilter1" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-2.5%", y "-2.5%", width "105.0%", height "110.0%", filterUnits "objectBoundingBox", id "topFilter2" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-2.7%", y "-2.7%", width "105.4%", height "110.8%", filterUnits "objectBoundingBox", id "topFilter3" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , filter [ x "-1.8%", y "-1.9%", width "103.6%", height "107.4%", filterUnits "objectBoundingBox", id "topFilter4" ]
                [ feOffset [ dx "0", dy "2", in_ "SourceAlpha", result "shadowOffsetOuter1" ] []
                , feColorMatrix [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0", type_ "matrix", in_ "shadowOffsetOuter1", result "shadowMatrixOuter1" ] []
                , standardMerge
                ]
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath1" ] []
            ]
        , mask [ id "topMask1", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Long-Hair/Frida", A.mask "url(#topMask1)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Cabello", strokeWidth "1", fillRule "evenodd", transform "translate(57, 12)" ]
                    [ path [ d "M132,86 L132,86 C137,87 141,91 142,96 C144,93 146,90 146,85.5 C146,83 146,81 145,79 C148,76 150,72 150,67.5 C150,62 147,57 142,54 C143,51 144,49 144,46.5 C144,39 139,32 132,31 C132,30 132,29 132,27.5 C132,16 123,7 111.5,7 C109,7 106,7 104,8 C100,3 94,0 87.5,0 C83,0 79,1 76,4 C73,1 69,0 64.5,0 C58,0 52,3 48,8 C46,7 43,7 40.5,7 C29,7 20,16 20,27.5 C20,29 20,30 20,31 C13,32 8,39 8,46.5 C8,49 8,51 9,53 C4,55 0,61 0,67.5 C0,73 3,78 7,81 C6,82 6,84 6,85.5 C6,90 8,93 10,96 C11,91 15,87 20,86 L20,86 C20,86 20,86 20,86 C23,39 69,56 76,29 C83,56 129,39 132,86 C132,86 132,86 132,86 Z M52,169 L52,173 C51,173 50,173 49.5,173 C43,173 37,169 34,163 C26,162 19,155 19,146.5 C19,145 19,144 20,142 C13,140 8,134 8,126.5 C8,123 9,119 11,117 C13,120 16,122 20,123 C22,143 34,160 52,169 Z M100,169 L100,173 C101,173 102,173 102.5,173 C109,173 115,169 118,163 C126,162 133,155 133,146.5 C133,145 133,144 132,142 C139,140 144,134 144,126.5 C144,123 143,119 141,117 C139,120 136,122 132,123 C130,143 118,160 100,169 Z", fill "#1F3540" ] [] ]
                , g [ id "Ornamentos", strokeWidth "1", fillRule "evenodd", transform "translate(67, 0)" ]
                    [ g [ id "hoja", A.filter "url(#topFilter5)", transform "translate(120, 65) scale(1, -1) rotate(-20) translate(-120, -65) translate(107, 57)", fillRule "nonzero" ]
                        [ path [ d "M4,10 C4,10 2,0 13,0 C20,0 25,6 25,6 C25,6 20,14 12,14 C5,14 4,10 4,10 Z", id "leaf", fill "#5DD362" ] []
                        , path [ d "M25,6 C25,6 20,14 12,14 C7,14 5,12 4,11 C2,13 1,14.5 1,15 C1.3,15 1,15 1,15 C1,15 1,15 0,15 C0,15 -0,14 0,14 C0,14 2,10 7,7 C15,3 25,6 25,6 Z", id "leaf", fill "#42BC53" ] []
                        ]
                    , g [ id "hoja", A.filter "url(#topFilter6)", transform "translate(93, 22) scale(-1, -1) rotate(-120) translate(-93, -22) translate(86, 7)" ]
                        [ path [ d "M15,12 C15,5.9 9,0 9,0 C9,0 1.7,4.3 1,13 C0.3,21.7 6.8,23.7 6.8,23.7 C6.8,23.7 15,20.8 15,12 Z", id "leaf", fill "#5DD362" ] []
                        , path [ d "M8,29 C8.1,29 8.2,29 8.3,28.9 C8.8,28.7 9.1,28.1 8.9,27.6 C8.4,26.1 8,24.7 7.8,23.2 C10,22.2 15,18.9 15,12 C15,5.9 9,0 9,0 C9,0 8.6,1.1 8,3 C8,3 8,3 8,3 C7.8,3.5 2.8,16.6 7.1,28.3 C7.2,28.7 7.6,29 8,29 Z", id "leaf", fill "#42BC53" ] []
                        ]
                    , g [ id "hoja", A.filter "url(#topFilter7)", transform "translate(29, 60) rotate(-120) translate(-29, -60) translate(22, 45)" ]
                        [ path [ d "M15,12 C15,5.9 9,0 9,0 C9,0 1.7,4.3 1,13 C0.3,21.7 6.8,23.7 6.8,23.7 C6.8,23.7 15,20.8 15,12 Z", id "leaf", fill "#5DD362" ] []
                        , path [ d "M8,29 C8.1,29 8.2,29 8.3,28.9 C8.8,28.7 9.1,28.1 8.9,27.6 C8.4,26.1 8,24.7 7.8,23.2 C10,22.2 15,18.9 15,12 C15,5.9 9,0 9,0 C9,0 8.6,1.1 8,3 C8,3 8,3 8,3 C7.8,3.5 2.8,16.6 7.1,28.3 C7.2,28.7 7.6,29 8,29 Z", id "leaf", fill "#42BC53" ] []
                        ]
                    , g [ id "Flor", A.filter "url(#topFilter1)", transform "translate(13, 42) scale(-1, 1) translate(-13, -42) translate(0, 29)" ]
                        [ path [ d "M24,21 C25,20 26,18 25,17 C25,16 25,15 23,14 C23,13 23,13 22,13 C23,13 23,13 23,13 C26,11 26,8 25,5 C23,3 20,2 17,4 C17,4 17,5 17,5 C17,4 17,4 16,4 C16,2 15,1 14,1 C13,-0 11,-0 10,0 C7,1 6,4 6,7 C7,7 7,7 7,8 C7,8 6,8 6,8 C3,8 1,10 1,13 C1,14 1,15 1,16 C2,17 4,18 6,18 C6,18 6,18 7,18 C7,18 6,19 6,19 C6,21 6,22 7,24 C8,24 8,25 9,26 C12,26 15,25 16,22 C16,22 16,22 16,21 C17,21 17,22 17,22 C18,23 20,23 21,23 C22,23 24,22 24,21 Z", fill "#4ACAD3", fillRule "nonzero" ] []
                        , path [ d "M11,9 C11,8 11,7 12,7 C13,7 14,7 14,8 C14,9 14,12 14,12 C14,12 11,9 11,9 Z M9,14 C8,14 8,14 8,13 C8,12 8,12 9,12 C10,12 13,13 13,13 C13,13 10,14 9,14 Z M15,12 C15,12 17,9 17,9 C18,9 19,9 19,9 C20,10 20,11 19,11 C18,12 15,12 15,12 Z M12,19 C11,19 11,18 11,17 C11,17 14,14 14,14 C14,14 14,18 14,18 C13,19 13,20 12,19 Z M17,17 C17,17 15,14 15,14 C15,14 18,15 19,15 C20,15 20,16 19,17 C19,18 18,18 17,17 Z", fill "#FFFFFF" ] []
                        ]
                    , g [ id "Flor", A.filter "url(#topFilter2)", transform "translate(20, 16)" ]
                        [ path [ d "M31,33 L31,31 L33,31 C36,30 38,28 39,26 C40,23 39,19 37,17 L35,16 L36,14 C37,11 36,8 34,6 C32,4 29,3 26,4 L24,5 L23,3 C21,1 17,-0 14,1 C12,2 10,4 9,7 L9,9 L7,9 C4,10 2,12 1,14 C-0,17 1,20 3,22 L3,22 C3,22 3,22 3,23 L5,24 L4,26 C3,29 4,32 6,34 C8,36 11,37 14,36 L16,35 L17,37 C19,39 23,40 26,39 C28,38 30,36 31,33 Z", fill "#FDB599", fillRule "nonzero" ] []
                        , path [ d "M23,25 C23,26 23,27 22,27 C21,27 20,27 20,26 C20,25 20,20 20,20 C20,20 18,25 17,25 C16,26 15,26 15,25 C14,25 14,24 15,23 C15,22 20,20 20,20 C20,20 15,20 14,20 C13,20 13,19 13,18 C13,17 14,17 15,17 C16,17 20,20 20,20 C20,20 17,16 17,15 C17,14 17,13 18,13 C19,13 20,13 20,14 C20,15 20,20 20,20 C20,20 22,15 23,15 C24,14 25,14 25,15 C26,15 26,16 25,17 C25,18 20,20 20,20 C20,20 25,20 26,20 C27,20 27,21 27,22 C27,23 26,23 25,23 C24,23 20,20 20,20 C20,20 23,24 23,25 Z", fill "#FFFFFF" ] []
                        ]
                    , g [ id "Flor", A.filter "url(#topFilter3)", transform "translate(89, 26)" ]
                        [ path [ d "M35,30 C36,28 36,26 36,24 C36,22 35,21 33,19 C33,19 32,19 32,19 C32,18 33,18 33,18 C37,16 37,11 35,8 C33,4 28,3 25,6 C24,6 24,7 24,7 C24,6 24,6 23,5 C23,3 22,2 20,1 C18,-0 16,-0 14,0 C10,2 8,6 9,10 C9,10 10,11 10,11 C9,11 9,11 8,11 C4,11 1,14 1,18 C1,20 1,21 2,22 C3,24 6,26 8,26 C9,26 9,26 10,25 C9,26 9,26 9,27 C8,29 9,32 10,34 C11,35 12,36 13,36 C17,38 22,36 23,32 C23,31 23,31 23,30 C24,31 24,31 24,31 C26,32 28,33 30,33 C32,32 34,31 35,30 Z", fill "#F7D30C", fillRule "nonzero" ] []
                        , path [ d "M16,12 C16,11 16,10 17,10 C18,9 20,10 20,11 C20,12 20,17 20,17 C20,17 16,13 16,12 Z M13,21 C12,21 11,20 11,18 C11,17 12,16 13,16 C14,16 18,19 18,19 C18,19 14,21 13,21 Z M21,18 C21,18 24,13 25,13 C26,12 27,12 28,13 C28,14 28,15 27,16 C26,17 21,18 21,18 Z M17,27 C16,27 15,26 16,25 C16,24 19,20 19,20 C19,20 20,25 20,26 C19,27 18,28 17,27 Z M25,25 C24,24 21,20 21,20 C21,20 26,21 27,21 C28,22 28,23 27,24 C27,25 25,25 25,25 Z", fill "#FFFFFF" ] []
                        ]
                    , g [ id "Flor", A.filter "url(#topFilter4)", transform "translate(48, 0)" ]
                        [ path [ d "M54,32 C56,25 48,19 45,17 C46,14 47,5 41,1 C35,-2 27,3 25,5 C24,5 24,5 24,5 C21,3 13,-0 8,5 C2,10 6,19 7,21 C5,23 -2,30 1,37 C2,39 3,40 5,42 C9,44 14,44 17,43 C18,45 20,50 24,52 C26,53 28,54 30,54 C36,53 39,44 40,41 C43,40 52,39 54,32 Z", fill "#FF7398", fillRule "nonzero" ] []
                        , path [ d "M28,26 C28,26 31,34 28,34 C25,35 27,26 27,26 C27,26 20,32 19,29 C17,26 26,25 26,25 C26,25 18,20 21,18 C23,16 27,24 27,24 C27,24 29,15 32,17 C35,18 28,25 28,25 C28,25 37,24 36,27 C36,30 28,26 28,26 Z", fill "#FFFFFF" ] []
                        ]
                    ]
                , g [ id "Arete", strokeWidth "1", fillRule "evenodd", transform "translate(182, 129)" ]
                    [ rect [ id "Cadenita", fill "#E6E6E6", x "9", y "0", width "2", height "39", rx "1" ] []
                    , polygon [ id "Rayo", fill "#9177FF", fillRule "nonzero", points "20 37 11 37 17 20 6 20 0 41 9 41 4 60" ] []
                    ]
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


longHairShavedSides : Accessory -> FacialHair -> Svg msg
longHairShavedSides accessory facialHair =
    g [ id "Top", strokeWidth "1", fillRule "evenodd" ]
        [ defs []
            [ rect [ id "topPath2", x "0", y "0", width "264", height "280" ] []
            , path [ d "M156,181 C174,172 186,155 188,135 C194,134 198,129 198,123 L198,110 C198,104 194,99 188,98 L188,92 C188,61 163,36 132,36 C101,36 76,61 76,92 L76,92 L76,98 C70,99 66,104 66,110 L66,123 C66,129 70,134 76,135 C78,155 90,172 108,181 L108,199 L104,199 L104,199 C64,199 32,231 32,271 L32,280 L232,280 L232,271 C232,231 200,199 160,199 L156,199 L156,181 Z M0,0 L264,0 L264,280 L0,280 L0,0 Z", id "topPath3" ] []
            , rect [ id "topPath4", x "0", y "0", width "112", height "150", rx "56" ] []
            , path [ d "M65,78 C67,76 80,75 83,74 C83,74 84,73 84,73 C85,73 86,74 86,74 C89,75 102,76 104,78 C106,79 108,83 107,86 C107,90 103,98 94,99 C92,97 88,95 84,95 C81,95 77,97 75,99 C66,98 62,90 62,86 C61,83 63,79 65,78 M103,95 C103,95 103,95 103,95 C103,95 103,95 103,95 M66,95 C66,95 66,95 66,95 C66,95 66,95 66,95 M145,56 C144,50 143,44 142,38 C142,37 140,26 140,26 C140,35 139,44 138,53 C137,56 137,59 137,61 C137,63 137,66 136,68 C136,71 132,73 130,74 C123,77 118,67 112,64 C105,61 92,60 85,65 C77,60 64,61 57,64 C51,67 46,77 39,74 C37,73 33,71 33,68 C32,66 32,63 32,61 C32,59 32,56 31,53 C30,44 29,35 29,26 C29,26 27,37 27,38 C26,44 25,50 24,56 C24,62 24,68 25,74 C26,77 27,80 28,83 C28,86 27,92 28,95 C28,101 31,113 34,118 C36,121 38,123 40,125 C42,127 43,130 45,132 C49,136 54,138 60,139 C66,143 75,146 84,146 C94,146 103,143 109,139 C115,138 120,136 124,132 C126,130 127,127 129,125 C131,123 133,121 135,118 C138,113 141,101 141,95 C142,92 141,86 141,83 C142,80 143,77 144,74 C145,68 145,62 145,56 Z", id "topPath1" ] []
            ]
        , mask [ id "topMask2", fill "white" ]
            [ use [ xlinkHref "#topPath2" ] [] ]
        , g [ id "Top/Long-Hair/Shaved-Sides", A.mask "url(#topMask2)" ]
            [ g [ transform "translate(-1, 0)" ]
                [ g [ id "Behind", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(1, 0)" ]
                    [ mask [ id "topMask3", fill "white" ]
                        [ use [ xlinkHref "#topPath3" ] [] ]
                    , g [ id "Mask-Hair" ] []
                    , path [ d "M116,40 L146,40 C171,40 192,61 192,86 L192,154 C192,181 211,204 223,226 C234,248 215,268 196,277 C191,279 186,280 180,280 L135,280 C79,280 70,216 68,147 L70,84 C71,59 91,40 116,40 Z", id "Hair", fill "#CCB55A", A.mask "url(#topMask3)" ] []
                    ]
                , g [ id "Top", strokeWidth "1", fill "none", fillRule "evenodd", transform "translate(77, 36)" ]
                    [ mask [ id "topMask1", fill "white" ]
                        [ use [ xlinkHref "#topPath4" ] [] ]
                    , path [ d "M99,20 C107,29 112,42 112,55.5 L112,65.5 L112,61.5 C112,46 105,32 95,22 C64,33 38,33 17,22 C7,32 0,46 0,61.5 L0,61.5 L0,65.5 L0,55.5 C0,42 5,29 13,20 C9,17 8,8 19,5 C31,1 29,-13 47,-16 C66,-19 64,-11 81,-12 C98,-13 104,-29 107,-25 C120,-9 116,9 99,20 Z", id "Shadow", fillOpacity "0.16", fill "#000000", A.mask "url(#topMask1)" ] []
                    ]
                , path [ d "M91,52 C113,65 141,65 174,52 C189,45 199,29 183,9 C181,6 172,16 155,17 C138,18 142,13 124,16 C106,19 108,33 96,37 C85,40 87,50 91,52 Z", id "Copetón", fill "#E0C863", fillRule "evenodd" ] []
                , FacialHair.view facialHair
                , Accessory.view accessory
                ]
            ]
        ]


standardMerge : Svg msg
standardMerge =
    feMerge []
        [ feMergeNode [ in_ "shadowMatrixOuter1" ] []
        , feMergeNode [ in_ "SourceGraphic" ] []
        ]

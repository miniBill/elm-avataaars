module Avataaars exposing (Avataaar, view)

import Clothes exposing (Clothes)
import Eyebrow exposing (Eyebrow(..))
import Eyes exposing (Eyes(..))
import Face exposing (Face)
import FacialHair exposing (FacialHair(..))
import Mouth exposing (Mouth(..))
import SkinTone exposing (SkinTone)
import Svg exposing (Svg, circle, defs, g, mask, path, rect, text, use)
import Svg.Attributes as A exposing (cx, cy, d, fill, fillOpacity, fillRule, height, id, r, stroke, strokeWidth, transform, viewBox, width, x, xlinkHref, y)
import Top exposing (Top(..))


type alias Avataaar =
    { circleBg : Bool
    , skinTone : SkinTone
    , clothes : Clothes
    , face : Face
    , top : Top
    }


view : Avataaar -> Svg msg
view { circleBg, skinTone, clothes, face, top } =
    let
        scale =
            1.7
    in
    Svg.svg
        [ width <| String.fromInt (round <| scale * 264) ++ "px"
        , height <| String.fromInt (round <| scale * 280) ++ "px"
        , viewBox "0 0 264 280"
        , stroke "none"
        , strokeWidth "1"
        , fill "none"
        , fillRule "evenodd"
        ]
        [ defs []
            [ circle [ id "path-1", cx "120", cy "120", r "120" ] []
            , path [ id "path-3", d "M12,160 C12,226 66,280 132,280 C198,280 252,226 252,160 L264,160 L264,0 L0,0 L0,160 L12,160 Z" ] []
            , path [ id "path-5", d "M124,145 L124,163 L128,163 L128,163 C168,163 200,195 200,235 L200,244 L0,244 L0,235 C0,195 32,163 72,163 L72,163 L76,163 L76,145 C59,136 46,120 44,100 C38,99 34,94 34,88 L34,74 C34,68 38,63 44,62 L44,56 L44,56 C44,25 69,0 100,0 L100,0 L100,0 C131,0 156,25 156,56 L156,62 C162,63 166,68 166,74 L166,88 C166,94 162,99 156,100 C154,120 141,136 124,145 Z" ] []
            ]
        , if circleBg then
            g [ strokeWidth "1", fillRule "evenodd", transform "translate(12, 40)" ]
                [ mask [ id "mask-2", fill "white" ]
                    [ use [ xlinkHref "#path-1" ] [] ]
                , use [ fill "#E6E6E6", xlinkHref "#path-1" ] []
                , g [ A.mask "url(#mask-2)", fill "#65C9FF" ]
                    [ rect [ x "0", y "0", width "240", height "240" ] [] ]
                ]

          else
            text ""
        , if circleBg then
            mask [ id "mask-4", fill "white" ]
                [ use [ xlinkHref "#path-3" ] [] ]

          else
            text ""
        , g
            [ id "Avataaar"
            , strokeWidth "1"
            , fillRule "evenodd"
            , if circleBg then
                A.mask "url(#mask-4)"

              else
                A.mask ""
            ]
            [ g [ id "Body", transform "translate(32, 36)" ]
                [ mask [ id "mask-6", fill "white" ]
                    [ use [ xlinkHref "#path-5" ] [] ]
                , use [ fill "#D0C6AC", xlinkHref "#path-5" ] []
                , SkinTone.view skinTone
                , path [ d "M156,79 L156,102 C156,133 131,158 100,158 C69,158 44,133 44,102 L44,79 L44,94 C44,125 69,150 100,150 C131,150 156,125 156,94 L156,79 Z", id "Neck-Shadow", fillOpacity "0.1", fill "#000000", A.mask "url(#mask-6)" ] []
                ]
            , Clothes.view clothes
            , Face.view face
            , Top.view top
            ]
        ]

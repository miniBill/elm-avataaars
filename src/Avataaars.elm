module Avataaars exposing
    ( Avataaar
    , view
    )

{-| An `Avataaar` contains all the information to draw a cute avatar


# Definition

@docs Avataaar


# View function

@docs view

-}

import Avataaars.Clothes exposing (Clothes)
import Avataaars.Face exposing (Face)
import Avataaars.Internal.Clothes as Clothes
import Avataaars.Internal.Face as Face
import Avataaars.Internal.SkinTone as SkinTone
import Avataaars.Internal.Top as Top
import Avataaars.SkinTone exposing (SkinTone)
import Avataaars.Top exposing (Top)
import Svg exposing (Svg, circle, g, mask, path)
import Svg.Attributes as A exposing (cx, cy, d, fill, fillOpacity, id, r, transform, viewBox)


{-| An `Avataaar` is a description of how to draw an avataaar.

Example:

    avataaar : Avataaar
    avataaar =
        { circleBg = True
        , skinTone = SkinTone.black
        , clothes = Clothes.BlazerShirt
        , face =
            { mouth = Mouth.Default
            , eyes = Eyes.Default
            , eyebrow = Eyebrow.Default
            }
        , top = Top.TopAccessoryFacialHair Top.NoHair Accessory.Blank FacialHair.Blank
        }

-}
type alias Avataaar =
    { circleBg : Bool
    , skinTone : SkinTone
    , clothes : Clothes
    , face : Face
    , top : Top
    }


{-| Transform an `Avataaar` into an `Svg msg`.
-}
view : { width : Int, height : Int } -> Avataaar -> Svg msg
view { width, height } { circleBg, skinTone, clothes, face, top } =
    let
        children : List (Svg msg)
        children =
            [ g [ transform "translate(32, 36)" ]
                [ mask [ id "viewMask", fill "white" ]
                    [ path [ d "M124,145 L124,163 L128,163 L128,163 C168,163 200,195 200,235 L200,244 L0,244 L0,235 C0,195 32,163 72,163 L72,163 L76,163 L76,145 C59,136 46,120 44,100 C38,99 34,94 34,88 L34,74 C34,68 38,63 44,62 L44,56 L44,56 C44,25 69,0 100,0 L100,0 L100,0 C131,0 156,25 156,56 L156,62 C162,63 166,68 166,74 L166,88 C166,94 162,99 156,100 C154,120 141,136 124,145 Z" ] [] ]
                , SkinTone.view skinTone
                , path [ d "M156,79 L156,102 C156,133 131,158 100,158 C69,158 44,133 44,102 L44,79 L44,94 C44,125 69,150 100,150 C131,150 156,125 156,94 L156,79 Z", fillOpacity "0.1", fill "#000000", A.mask "url(#viewMask)" ] []
                ]
            , Clothes.view clothes
            , Face.view face
            , Top.view top
            ]
    in
    Svg.svg
        [ A.width <| String.fromInt width ++ "px"
        , A.height <| String.fromInt height ++ "px"
        , viewBox "0 0 264 280"
        ]
    <|
        if circleBg then
            [ circle [ cx "132", cy "160", r "120", fill "#65C9FF" ] []
            , mask [ id "viewMask2", fill "white" ]
                [ path [ d "M12,160 C12,226 66,280 132,280 C198,280 252,226 252,160 L264,160 L264,0 L0,0 L0,160 L12,160 Z" ] [] ]
            , g [ A.mask "url(#viewMask2)" ]
                children
            ]

        else
            children

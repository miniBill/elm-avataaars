module Avataaars.Internal.SkinTone exposing (view)

import Avataaars.SkinTone exposing (SkinTone)
import Svg exposing (Svg, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


view : SkinTone -> Svg msg
view skinTone =
    rect
        [ x "0"
        , y "0"
        , width "264"
        , height "280"
        , A.mask "url(#mask-6)"
        , fill skinTone
        ]
        []

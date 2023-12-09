module Avataaars.Internal.HairColor exposing (view)

import Avataaars.HairColor exposing (HairColor)
import Svg exposing (Svg, g, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


view : { maskId : String, hairColor : HairColor } -> Svg msg
view { maskId, hairColor } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fill hairColor ]
        [ rect [ x "0", y "0", width "264", height "280" ] []
        ]

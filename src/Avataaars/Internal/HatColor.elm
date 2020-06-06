module Avataaars.Internal.HatColor exposing (view)

import Avataaars.HatColor exposing (HatColor)
import Svg exposing (Svg, g, mask, rect)
import Svg.Attributes as A exposing (fill, fillRule, height, id, width, x, y)


view : { maskId : String, hatColor : HatColor } -> Svg msg
view { maskId, hatColor } =
    g [ A.mask <| "url(#" ++ maskId ++ ")", fillRule "evenodd", fill hatColor ]
        [ rect [ id "🖍Color", x "0", y "0", width "264", height "280" ] []
        ]

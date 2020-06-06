module Avataaars.Internal.Face exposing (view)

import Avataaars.Face exposing (Face)
import Avataaars.Internal.Eyebrow as Eyebrow
import Avataaars.Internal.Eyes as Eyes
import Avataaars.Internal.Mouth as Mouth
import Svg exposing (Svg, g, path)
import Svg.Attributes exposing (d, fill, fillOpacity, transform)


view : Face -> Svg msg
view { mouth, eyes, eyebrow } =
    g [ transform "translate(76, 82)", fill "#000000" ]
        [ Mouth.view mouth
        , viewNose
        , Eyes.view eyes
        , Eyebrow.view eyebrow
        ]


viewNose : Svg msg
viewNose =
    g [ transform "translate(28, 40)", fillOpacity "0.16" ]
        [ path [ d "M16,8 C16,12 21,16 28,16 L28,16 C35,16 40,12 40,8" ] [] ]

module SkinTone exposing (SkinTone, black, brown, darkBrown, light, pale, tanned, view, yellow)

import Svg exposing (Svg, mask, rect)
import Svg.Attributes as A exposing (fill, height, width, x, y)


type alias SkinTone =
    String


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


tanned : SkinTone
tanned =
    "#FD9841"


yellow : SkinTone
yellow =
    "#F8D25C"


pale : SkinTone
pale =
    "#FFDBB4"


light : SkinTone
light =
    "#EDB98A"


brown : SkinTone
brown =
    "#D08B5B"


darkBrown : SkinTone
darkBrown =
    "#AE5D29"


black : SkinTone
black =
    "#614335"

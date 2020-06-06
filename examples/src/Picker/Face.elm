module Picker.Face exposing (picker)

import Avataaars.Face as Face exposing (Face)
import Picker exposing (Picker)
import Picker.Eyebrow
import Picker.Eyes
import Picker.Mouth


picker : Face -> List (Picker Face)
picker face =
    [ Picker.map (\mouth -> { face | mouth = mouth }) <| Picker.Mouth.picker face.mouth
    , Picker.map (\eyes -> { face | eyes = eyes }) <| Picker.Eyes.picker face.eyes
    , Picker.map (\eyebrow -> { face | eyebrow = eyebrow }) <| Picker.Eyebrow.picker face.eyebrow
    ]

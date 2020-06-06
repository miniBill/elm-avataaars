module Internal.Matrices exposing (matrixDot1, matrixDot16, matrixDot2)

import Svg exposing (Svg, feColorMatrix)
import Svg.Attributes exposing (in_, result, type_, values)


matrixDot2 : Svg msg
matrixDot2 =
    feColorMatrix
        [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.2 0"
        , type_ "matrix"
        , in_ "shadowOffsetOuter1"
        , result "shadowMatrixOuter1"
        ]
        []


matrixDot16 : Svg msg
matrixDot16 =
    feColorMatrix
        [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.16 0"
        , type_ "matrix"
        , in_ "shadowOffsetOuter1"
        , result "shadowMatrixOuter1"
        ]
        []


matrixDot1 : Svg msg
matrixDot1 =
    feColorMatrix
        [ values "0 0 0 0 0   0 0 0 0 0   0 0 0 0 0  0 0 0 0.1 0"
        , type_ "matrix"
        , in_ "shadowOffsetOuter1"
        , result "shadowMatrixOuter1"
        ]
        []

module Grades.Levels.ABCD exposing (Level(..), next, prev, show, showHalfway, toLinearScale)


type Level
    = A
    | B
    | C
    | D


next : Level -> Maybe Level
next lvl =
    case lvl of
        A ->
            Just B

        B ->
            Just C

        C ->
            Just D

        D ->
            Nothing


prev : Level -> Maybe Level
prev lvl =
    case lvl of
        A ->
            Nothing

        B ->
            Just A

        C ->
            Just B

        D ->
            Just C


show : Level -> String
show lvl =
    case lvl of
        A ->
            "a"

        B ->
            "b"

        C ->
            "c"

        D ->
            "d"


showHalfway : Level -> Maybe String
showHalfway lvl =
    case lvl of
        A ->
            Just "a/b"

        B ->
            Just "b/c"

        C ->
            Just "c/d"

        D ->
            Nothing


toLinearScale : Level -> Float
toLinearScale lvl =
    case lvl of
        A ->
            0 / 4

        B ->
            1 / 4

        C ->
            2 / 4

        D ->
            3 / 4

module Main exposing (main)

-- IMPORTS

import Html exposing (Html)



-- MAIN


main : Html a
main =
    Html.main_ []
        [ header ]


header : Html a
header =
    Html.header []
        [ Html.h1 []
            [ Html.text "Practice" ]
        ]

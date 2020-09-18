module StringsTest exposing (suite)

import Expect
import Strings
import Test exposing (Test)


suite : Test
suite =
    Test.describe "The Strings module"
        [ Test.describe "Strings.isUnique"
            [ Test.test "returns True for a string containing unique characters" <|
                \_ ->
                    "hi"
                        |> Strings.isUnique
                        |> Expect.true "Expected string to contain unique characters only."
            , Test.test "returns False for a string containing duplicate characters" <|
                \_ ->
                    "hello"
                        |> Strings.isUnique
                        |> Expect.false "Expected string to contain unique characters only."
            , Test.test "returns True for an empty string" <|
                \_ ->
                    ""
                        |> Strings.isUnique
                        |> Expect.true "Expected string to contain unique characters only."
            ]
        ]

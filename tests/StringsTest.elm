module StringsTest exposing (suite)

import Expect
import Strings
import Test exposing (Test)


suite : Test
suite =
    Test.describe "Strings"
        [ Test.describe ".hasUniqueCharacters"
            [ Test.test "returns True for a string containing unique characters" <|
                \_ ->
                    "hi"
                        |> Strings.hasUniqueCharacters
                        |> Expect.true "Expected string to contain unique characters only."
            , Test.test "returns False for a string containing duplicate characters" <|
                \_ ->
                    "hello"
                        |> Strings.hasUniqueCharacters
                        |> Expect.false "Expected string to contain unique characters only."
            , Test.test "returns True for an empty string" <|
                \_ ->
                    ""
                        |> Strings.hasUniqueCharacters
                        |> Expect.true "Expected string to contain unique characters only."
            ]
        ]

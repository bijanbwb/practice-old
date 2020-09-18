module StringsTest exposing (suite)

import Expect
import Fuzz
import Strings
import Test exposing (Test)


suite : Test
suite =
    Test.describe "Strings"
        [ hasUniqueCharacters
        , checkPermutation
        ]


hasUniqueCharacters : Test
hasUniqueCharacters =
    Test.describe ".hasUniqueCharacters"
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


checkPermutation : Test
checkPermutation =
    Test.describe ".checkPermutation"
        [ Test.test "returns True if the inputted strings are equal" <|
            \_ ->
                Strings.checkPermutation "same" "same"
                    |> Expect.true "Expected the strings to be permutations of each other."
        , Test.test "returns False if the inputted strings are a different length" <|
            \_ ->
                Strings.checkPermutation "123" "1234"
                    |> Expect.false "Expected the strings to be permutations of each other."
        , Test.test "returns True if the inputted strings are permutations of each other" <|
            \_ ->
                Strings.checkPermutation "asdfghjk" "ghjkasdf"
                    |> Expect.true "Expected the strings to be permutations of each other."
        , Test.test "returns False if the inputted strings are the same length but not permutations of each other" <|
            \_ ->
                Strings.checkPermutation "asdfghjk" "asdfghjl"
                    |> Expect.false "Expected the strings to be permutations of each other."
        , Test.fuzz Fuzz.string "returns True for all cases where the strings are the same" <|
            \string1 ->
                Strings.checkPermutation string1 string1
                    |> Expect.true "Expected the strings to be permutations of each other."
        ]

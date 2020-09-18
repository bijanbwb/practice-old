module ListsTest exposing (suite)

import Expect
import Fuzz
import Lists
import Test exposing (Test)


suite : Test
suite =
    Test.describe "Lists"
        [ unique
        ]


unique : Test
unique =
    Test.describe ".unique"
        [ Test.test "returns True for an empty List" <|
            \_ ->
                []
                    |> Lists.unique
                    |> Expect.true "Expected list to contain unique elements."
        , Test.test "returns True for a List with unique elements" <|
            \_ ->
                [ "a", "b", "c" ]
                    |> Lists.unique
                    |> Expect.true "Expected list to contain unique elements."
        , Test.test "returns False for a List with duplicate elements" <|
            \_ ->
                [ "a", "a", "a" ]
                    |> Lists.unique
                    |> Expect.false "Expected list to contain unique elements."
        , Test.fuzz (Fuzz.list Fuzz.string) "returns False when string values are repeated" <|
            \string1 ->
                string1
                    |> List.repeat 10
                    |> Lists.unique
                    |> Expect.false "Expected the strings to be permutations of each other."
        , Test.fuzz (Fuzz.list Fuzz.int) "returns False when integer values are repeated" <|
            \string1 ->
                string1
                    |> List.repeat 10
                    |> Lists.unique
                    |> Expect.false "Expected the strings to be permutations of each other."
        ]

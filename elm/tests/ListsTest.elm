module ListsTest exposing (suite)

import Expect
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
        ]

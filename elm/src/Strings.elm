module Strings exposing (checkPermutation, checkPermutationAlternate, hasUniqueCharacters)

-- IMPORTS

import Utils


{-| Check if a string is made up of only unique characters.

    Strings.hasUniqueCharacters "hi" == True

    Strings.hasUniqueCharacters "hello" == False

-}
hasUniqueCharacters : String -> Bool
hasUniqueCharacters string =
    String.all (checkCharacterCount string) string


checkCharacterCount : String -> Char -> Bool
checkCharacterCount string character =
    characterCount character string == 1


characterCount : Char -> String -> Int
characterCount character string =
    string
        |> String.indices (String.fromChar character)
        |> List.length


{-| Check if one string is a permutation of another string.

    Strings.checkPermutation "same" "same" == True

    Strings.checkPermutation "hello" "12345" == False

-}
checkPermutation : String -> String -> Bool
checkPermutation string1 string2 =
    if String.length string1 == String.length string2 then
        string1
            |> String.split ""
            |> List.all (Utils.flip String.contains string2)

    else
        False


checkPermutationAlternate : String -> String -> Bool
checkPermutationAlternate string1 string2 =
    (String.length string1 == String.length string2)
        && (sort string1 == sort string2)


sort : String -> String
sort string =
    string
        |> String.split ""
        |> List.sort
        |> String.join ""

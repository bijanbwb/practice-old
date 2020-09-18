module Strings exposing (hasUniqueCharacters)

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

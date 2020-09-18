module Strings exposing (isUnique)

{-| Check if a string is made up of only unique characters.

    Strings.isUnique "hi" == True

    Strings.isUnique "hello" == False

-}


isUnique : String -> Bool
isUnique string =
    String.all (checkCharacterCount string) string


checkCharacterCount : String -> Char -> Bool
checkCharacterCount string character =
    characterCount character string == 1


characterCount : Char -> String -> Int
characterCount character string =
    string
        |> String.indices (String.fromChar character)
        |> List.length

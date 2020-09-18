module Lists exposing (unique)

{-| Check if a list is made up of unique elements.

    Lists.unique [] == True

    Lists.unique [ "a", "b", "c" ] == True

    Lists.unique [ "a", "a", "a" ] == False

-}


unique : List a -> Bool
unique list =
    case list of
        [] ->
            True

        head :: tail ->
            if List.member head tail then
                False

            else
                unique tail

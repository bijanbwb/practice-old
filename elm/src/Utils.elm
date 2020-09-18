module Utils exposing (flip)


flip : (a -> b -> c) -> b -> a -> c
flip func a b =
    func b a

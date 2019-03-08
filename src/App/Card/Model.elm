module App.Card.Model exposing (Card, fromNameInterval, fromString, interval, name, tick, ticks)


type Card
    = Card String Float Int



-- { name : String
-- , interval : Float
-- , ticks : Int
-- }


fromString : String -> Card
fromString n =
    Card n 1000 0


fromNameInterval : String -> Float -> Card
fromNameInterval n i =
    Card n i 0


interval : Card -> Float
interval (Card _ i _) =
    i


name : Card -> String
name (Card n _ _) =
    n


ticks : Card -> Int
ticks (Card _ _ t) =
    t


tick : Card -> Card
tick (Card n i t) =
    Card n i (t + 1)

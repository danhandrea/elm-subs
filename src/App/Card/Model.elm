module App.Card.Model exposing (Card, fromNameInterval, fromString)


type alias Card =
    { name : String
    , interval : Float
    , ticks : Int
    }


fromString : String -> Card
fromString name =
    Card name 1000 0


fromNameInterval : String -> Float -> Card
fromNameInterval name interval =
    Card name interval 0

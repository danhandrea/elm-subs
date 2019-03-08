module App.Card.Messages exposing (CardMsg(..))

import Time exposing (Posix)


type CardMsg
    = Tick Posix

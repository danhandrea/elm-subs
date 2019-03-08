module App.Card.Subscriptions exposing (subscriptions)

import App.Card.Messages exposing (CardMsg(..))
import App.Card.Model exposing (Card, interval)
import Time exposing (Posix, every)


subscriptions : Card -> Sub CardMsg
subscriptions model =
    every (interval model) Tick

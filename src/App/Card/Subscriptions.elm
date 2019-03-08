module App.Card.Subscriptions exposing (subscriptions)

import App.Card.Messages exposing (CardMsg(..))
import App.Card.Model exposing (Card)
import Time exposing (Posix, every)


subscriptions : Card -> Sub CardMsg
subscriptions model =
    every model.interval Tick

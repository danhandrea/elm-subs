module App.Messages exposing (Msg(..))

import App.Card.Messages exposing (CardMsg)
import App.Card.Model exposing (Card)


type Msg
    = CardMessage Card CardMsg

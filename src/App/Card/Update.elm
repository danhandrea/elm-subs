module App.Card.Update exposing (update)

import App.Card.Messages exposing (CardMsg(..))
import App.Card.Model exposing (Card)


update : CardMsg -> Card -> ( Card, Cmd CardMsg )
update msg model =
    case msg of
        Tick t ->
            ( { model | ticks = model.ticks + 1 }, Cmd.none )

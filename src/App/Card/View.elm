module App.Card.View exposing (view)

import App.Card.Messages exposing (CardMsg)
import App.Card.Model exposing (Card)
import Html exposing (Html, div, text)


view : Card -> Html CardMsg
view model =
    div [] [ text <| "this is a card named " ++ model.name ++ " with " ++ String.fromInt model.ticks ++ " ticks." ]

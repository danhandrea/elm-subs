module App.View exposing (view)

import App.Card.View as C exposing (view)
import App.Messages exposing (Msg(..))
import App.Model exposing (Model)
import Html exposing (Html, div, text)


view : Model -> Html Msg
view model =
    div []
        (List.map (\c -> Html.map (\s -> CardMessage c s) (C.view c)) model.cards)

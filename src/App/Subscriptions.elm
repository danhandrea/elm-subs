module App.Subscriptions exposing (subscriptions)

import App.Card.Subscriptions as C exposing (subscriptions)
import App.Messages exposing (Msg(..))
import App.Model exposing (Model)


subscriptions : Model -> Sub Msg
subscriptions model =
    let
        cards =
            List.map (\c -> Sub.map (CardMessage c) (C.subscriptions c)) model.cards
    in
    Sub.batch cards

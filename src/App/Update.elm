module App.Update exposing (update)

import App.Card.Update as C exposing (update)
import App.Messages exposing (Msg(..))
import App.Model exposing (Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        CardMessage sModel subMsg ->
            let
                ( subModel, subCmd ) =
                    C.update subMsg sModel

                newCards =
                    List.map
                        (\c ->
                            if c.name == subModel.name then
                                subModel

                            else
                                c
                        )
                        model.cards
            in
            ( { model | cards = newCards }, Cmd.map (CardMessage sModel) subCmd )

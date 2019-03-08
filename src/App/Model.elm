module App.Model exposing (Model, from, init)

import App.Card.Model exposing (Card, fromNameInterval)
import App.Messages exposing (Msg(..))


type alias Model =
    { cards : List Card
    }


init : ( Model, Cmd Msg )
init =
    ( from, Cmd.none )


from : Model
from =
    Model [ fromNameInterval "Card 1" 500, fromNameInterval "Card 2" 5000, fromNameInterval "Card 3" 3000 ]

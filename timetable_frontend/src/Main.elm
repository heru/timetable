module Main exposing (..)

import Html exposing (Html, button, text, div)
import Html.Events exposing (onClick)
import Html.App


main : Program Never
main =
    Html.App.program
    { init = init
    , update=update
    , view = view
    , subscriptions = subscriptions
    }

type alias Model =
    Int


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Increment ->
            (model + 1, Cmd.none)
        Decrement ->
            (model - 1, Cmd.none)

view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ]
            [ text "increment" ]
        , div []
           [ text <| toString(model) ]    
        , button [ onClick Decrement ]
            [ text "Decrement" ]    
        ]

init : (Model, Cmd Msg) 
init =
    (0, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none
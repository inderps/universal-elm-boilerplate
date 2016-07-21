module Views exposing (..)

import Html exposing (..)
import Html.App as App
import Html.Events exposing (onClick)

import Views.Counter exposing (view)

import Models exposing (GlobalModel)
import Updates exposing (GlobalMsg (..))

globalView : GlobalModel -> Html GlobalMsg
globalView model =
  div
    []
    [ App.map Top (view model.topCounter)
    , App.map Bottom (view model.bottomCounter)
    , button [ onClick Reset ] [ text "RESET" ]
    ]

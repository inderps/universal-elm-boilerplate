module Updates exposing (..)

import Updates.Counter exposing (Msg (..), update)

import Models exposing (GlobalModel, globalInit)

type GlobalMsg
  = Reset
  | Top Msg
  | Bottom Msg

globalUpdate : GlobalMsg -> GlobalModel -> GlobalModel
globalUpdate message model =
  case message of
    Reset ->
      globalInit 0 0

    Top msg ->
      { model | topCounter = update msg model.topCounter }

    Bottom msg ->
      { model | bottomCounter = update msg model.bottomCounter }

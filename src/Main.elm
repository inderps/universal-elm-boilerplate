module MyApp exposing (..)

import Html.App as App

import Models exposing (globalInit)
import Updates exposing (globalUpdate)
import Views exposing (globalView)

main =
  App.beginnerProgram
    { model = globalInit 0 0
    , update = globalUpdate
    , view = globalView
    }

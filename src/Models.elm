module Models exposing (..)

import Models.Counter exposing (Model, init)

type alias GlobalModel =
  { topCounter : Model
  , bottomCounter : Model
  }

globalInit : Int -> Int -> GlobalModel
globalInit top bottom =
  { topCounter = init top
  , bottomCounter = init bottom
  }

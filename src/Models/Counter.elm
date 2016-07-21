module Models.Counter exposing (Model, init)

type alias Model = Int

init : Int -> Model
init count =
  count

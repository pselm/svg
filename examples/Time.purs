module Examples.Time where

import Control.Monad.Aff (launchAff_)
import Control.Monad.Eff (Eff)
import Control.Monad.IO (INFINITY, runIO)
import Elm.Default
import Elm.Html (Html, program)
import Elm.Platform (runProgram)
import Elm.Svg (circle, line, svg)
import Elm.Svg.Attributes (cx, cy, fill, r, stroke, viewBox, width, x1, x2, y1, y2)
import Elm.Time (every, inMinutes) as Time
import Elm.Time (Time, second)
import Prelude (Unit, unit, ($))


main :: Eff (infinity :: INFINITY) Unit
main =
    launchAff_ $ runIO do
        runProgram unit $
            program
                { init
                , view
                , update
                , subscriptions
                }


-- MODEL


type Model = Time


init :: (Model /\ Cmd Msg)
init =
  (0.0 /\ none)



-- UPDATE


data Msg
  = Tick Time


update :: Msg -> Model -> (Model /\ Cmd Msg)
update msg model =
  case msg of
    Tick newTime ->
      (newTime /\ none)



-- SUBSCRIPTIONS


subscriptions :: Model -> Sub Msg
subscriptions model =
  Time.every second Tick



-- VIEW


view :: Model -> Html Msg
view model =
  let
    angle =
      turns (Time.inMinutes model)

    handX =
      toString (50.0 + 40.0 * cos angle)

    handY =
      toString (50.0 + 40.0 * sin angle)
  in
    svg [ viewBox "0 0 100 100", width "300px" ]
      [ circle [ cx "50", cy "50", r "45", fill "#0B79CE" ] []
      , line [ x1 "50", y1 "50", x2 handX, y2 handY, stroke "#023963" ] []
      ]

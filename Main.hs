module Main where

import qualified Synthesizer.Plain.Play as Play

triangle :: [Double]
triangle =
  let
    up = [0.0, 0.001 .. 1.0]
    down = reverse up
  in
    up ++ down ++ map negate up ++ map negate down

main :: IO ()
main = do
  Play.monoToInt16 44100 (cycle triangle)
  pure ()

module C08
    ( c08
    ) where

import Data.Bifunctor
-- import Data.Profunctor.Types
-- import Data.Profunctor.Unsafe
import Data.Profunctor
import Control.Applicative
-- import Data.Functor.Contravariant (Contravariant (..))

data Pair a b = Pair a b deriving (Show)

instance Bifunctor Pair where
  first f (Pair a b) = Pair (f a) b
  second f (Pair a b) = Pair a (f b)

-- instance Profunctor (->) where
--   lmap f g = g . f
--   rmap f g = f . g

testFun :: Int -> String
testFun = show

lm :: () -> Int
lm a = 5

rm :: String -> Maybe String
rm = Just

z = dimap lm rm testFun

c08 :: IO ()
c08 = print $ z ()

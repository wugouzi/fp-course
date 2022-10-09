-- |

module Course.Syntax where

import Prelude
import Data.String

g :: Int -> (Int -> Int)
g a b = a + b
-- g = \a b -> a + b

-- >>> 1 `g` 2
-- 3

-- lower case in a type in haskell means polymorphic
i :: a -> a
i x = x

--   type     data constructor
data Person = MkPerson String Int

brian :: Person
brian = MkPerson "Brian" 27

--   a type that has two constructors
data Z = X String | Y
  deriving (Show)

instance Eq Z where
  X a == X b = a == b
  Y == Y = True
  _ == _ = False
  -- a /= b = not (a == b)

class ToString a where
  toString :: a -> String

instance ToString Int where
  toString = show

instance ToString Bool where
  toString True = "True"
  toString False = "False"


j :: Z
j = X "test"

data Bool' = True' | False'

-- pattern matching
k :: Z -> String
k (X s) = s
k Y = "y"

l :: Z -> String
l z = case z of
  X s -> s
  Y -> "y"

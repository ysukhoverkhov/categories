module C02
    ( c02
    ) where



neg :: Bool -> Bool
neg a = not a

bid :: Bool -> Bool
bid a = a


c02 :: IO ()
c02 = do
  print $ neg True
  print $ bid False

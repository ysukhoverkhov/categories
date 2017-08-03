module C01
    ( c01
    ) where


compose :: (a -> b) -> (b -> c) -> (a -> c)
compose ab bc = \x -> bc $ ab x

c01 :: IO ()
c01 = do
  print $ compose (1 +) (2 +) 10
  print $ compose (1 +) id 10
  print $ compose id (2 +) 10

module C03
    ( c03
    ) where

instance Monoid Bool where
  mempty = False
  mappend = (||)

-- instance Monoid Bool where
--   mempty = True
--   mappend = (&&)


c03 :: IO ()
c03 = do
  print $ "OK"

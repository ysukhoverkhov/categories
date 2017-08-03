module C04
    ( c04
    ) where

-- instance Monoid (a -> Maybe b) where
mempty = Nothing
m1 >=> m2 = \x ->
  let x' = m1 x
      y' = case x' of
        Nothing -> Nothing
        Just x'' -> m2 x''
  in
    y'

test :: Int -> Maybe Int
test 0 = Nothing
test a = Just a

c04 :: IO ()
c04 =
  print $ (test >=> test) 0

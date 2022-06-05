main::IO()
main = do
    --print (fmap (+2) [1,2,3])
    --print ([(+2) , (*3)] <*> [2,3,4])
    --print ((++) <$> Just "hello" <*> Just " vivek")
    --print (pure (++) <*> Just "hello" <*> Just "vivek")
    --print (fmap ((+2).(*3)) [1,2,3])
    --print (fmap (+2) . fmap (*3) $ [1,2,3])
    --print (fmap id "jhgjh")
    -- fmap f xs = xs >>= return . f
    print (fmap (+2) [2,3,4]) --functor
    print (pure (+2) <*> [2,3,4]) -- Applicative
    print ([2,3,4] >>= return . (+2)) --monad
    print (fmap (+3) (Just 3))
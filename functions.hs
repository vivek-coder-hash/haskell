sayHi :: String ->Int -> IO()   -- sayHi will take name as parameter which is String and age as Number.
sayHi name age = do
    putStrLn ("Hello User!! " ++ name)
    putStrLn ("your age is "++ show age)


main :: IO ()  -- This mean we are printing or putting something in console for now.
main = do   -- main is name of function 
    putStrLn "Hello function"
    putStrLn "Hello again"
    sayHi  "vivek" 200  --It will call sayHi function , "vivek"  and 200 are parameters
main = do
    putStrLn ("Enter your name")
    putStrLn ("Enter your age")
    name <- getLine  -- getLine is built in function , it give user chance to enter something
    age <- getLine
    
    putStrLn ("your name is " ++ name++ "your age is "++ age)
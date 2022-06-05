-- we can store variable here without "let" keyword
name :: String  -- name is string 
name="vivek"  -- value of name is "vivek"

number:: Int  -- Type of number is Int
number=100   -- value of number is 100

main = do  -- This line is important
    -- let name ="vivek" 
    let numberOfChildrens = 55
    putStrLn (name ++ " Hello world Haskell!!!")
    putStrLn ("Hello  and " ++name++ " is good boy and he has " ++show numberOfChildrens++ " children")
    putStrLn ("hi")
    print 55
    putStrLn (show 55)
    
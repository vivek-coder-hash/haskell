main = do
    putStrLn "Please enter your age:"
    age <- getLine
    let ageAsNumber = read age::Int
    let ageAfter10Years = ageAsNumber+10
    print ageAfter10Years
    putStrLn ("In 10 years your age will be "++ show ageAfter10Years)
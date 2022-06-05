main = do
    putStrLn ("Enter first number")
    firstNumber <- getLine
    putStrLn ("Enter second number")
    secondNumber <- getLine
    let firstInt = read firstNumber::Int
    let secondInt = read secondNumber::Int
    let sum = firstInt+secondInt
    putStrLn ("sum of numbers is "++ show sum)

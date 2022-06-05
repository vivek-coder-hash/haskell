





main :: IO()
main = do
    putStrLn "Enter first Number"
    firstNumber <- getLine
    putStrLn "Enter second Number"
    secondNumber <- getLine
    putStrLn "Enter operator"
    operator <- getLine
    let first = read firstNumber::Double  -- Double mean type of decimal number.
    let second = read secondNumber::Double

    if operator == "+"
    then print (first+second)  
    else if operator == "-"
    then print (first-second)
    else if operator == "*"
    then print (first*second)
    else if operator == "/"
    then print (first/second)
    else putStrLn ("Operator does not exist")        



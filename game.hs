
runGame :: Int-> IO()
runGame incorrectGuesses = do
    let secretNumber = "5"
    

    if incorrectGuesses == 3
    then putStrLn "Your chances finished"
    else do
        putStrLn "Enter a number between 1 and 10 :"
        userGuess <- getLine  
        if userGuess == secretNumber
         then putStrLn "you Won!"
         else runGame (incorrectGuesses+1)   

main :: IO()
main = do
    runGame 0
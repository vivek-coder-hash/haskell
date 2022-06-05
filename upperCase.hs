removeLowerCase::String->IO()
removeLowerCase st = do
    putStrLn([c | c <- st , c `elem` ['A'..'Z']])


removeConsonants::[Char]->[Char]
removeConsonants words = [c | c <- words , c `elem` ['a','e','i','o','u' , ' ' , 'A', 'E','I','O','U' ]]

lowerToUpper::[Char]->[Char]
lowerToUpper words = [c| c<-words , c `elem` ['A'..'Z']]

main::IO()
main = do
      removeLowerCase ("i Am Vivek")
    --right angle Tuples
    --print([(a,b,c)| a <- [1..10] , b<-[1..10] , c<-[1..10] , a*a + b*b == c*c])
    -- putStrLn (removeConsonants ("I am vivek"))
    --putStrLn (lowerToUpper ("I AM VIVEK"))
    
   
    
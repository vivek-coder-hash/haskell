
-- factorial::Int -> IO()
-- factorial n = do
--     putStrLn("Enter number")
--     number <- getLine
--     let num = read number::Int
--     print (product [n..num])

  

-- numbers::[Int]
-- numbers = [2..18]

-- printNumbers::Int -> IO()
-- printNumbers n = do
--     if n<= length numbers
--         then do
--         print (numbers !! n)
--         printNumbers(n+1)

--     else putStrLn "Every number is printed"   




-- fact::(Integral a) => a -> a
-- fact 0 = 1
-- fact n = n * fact(n-1)

addVectors::Int->Int->Int
addVectors (a,b) (c,d) = (a + c,b + d)

 


main::IO()
main = do
--factorial 1
--print ([x| x<-[1..100] , x `mod` 2 == 0])
--printNumbers 0 
--print (fact 6)
  print (addVectors (4,5) (5,6))
--print (distance([1,9,7,5])) 





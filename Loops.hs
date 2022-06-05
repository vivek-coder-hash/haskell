-- printTo100 :: Int -> IO()
-- printTo100 num = do
--     if num <= 100
--     then do 
--         print num
--         printTo100 (num+1)
--     else putStr "Loop is ended" 

-- main :: IO()
-- main = do
--     printTo100 1  --  "printTo100" is function with "1" as parameter


students::[String]
students = ["vivek" , "manu" , "lambu","peepni"]

printStudents:: Int -> IO()
printStudents num = do
    if num <=4
    then do 
    putStrLn (students !! num)
    printStudents(num+1)

    else putStrLn "Loop is ended"    


main :: IO()
main = do
    printStudents 0


suming::[Int]->Int
suming myList = do
    if myList == []
        then 0
     else head myList + sum (tail myList)   

     
sumPattern::[Int]->Int
sumPattern [] =0
sumPattern (x:xs) = x + sum(xs)  

maxFind::[Int]->Int
maxFind myList1 = do
    if myList1 == []
        then error "maximum of empty list"
    else if length myList1 ==1
        then  head myList1   
    else if head myList1 > maximum (tail myList1)
        then head myList1
    else  maximum (tail myList1)   


maxFindPattern::[Int]->Int
maxFindPattern [] = error "maximum of empty list" 
maxFindPattern [x] =x
maxFindPattern (x:xs) | x > maximum (xs) = x
                      | otherwise = maximum xs   

main::IO()
main = do
    print(suming [2])
    --print(maxFind[8])
   --print (maxFindPattern [1])
    
    
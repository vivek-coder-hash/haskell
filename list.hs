-- List are way to store large amount of data
scores::[Int]
scores = [79,83,100]

--function that add all elements of list
addAll :: (Num a) => [a] -> a
addAll [] = 0
addAll [x] = x
addAll (x:xs) = x  + addAll (xs)

-- function that multiply all elements of list

mulAll :: (Num a) => [a] -> a
mulAll [] = 1
mulAll [x] = x
mulAll (x:xs) = x * mulAll (xs)



main = do

   print (scores !! 0)
   print (head scores) -- head is built-in function that take first item from list or Array
   print (last scores) -- last is built-in function that have last item from list or array
   print (init scores) -- Give new list or array with removing of last element from original List or array 
   print (tail scores)  -- Give new list or array with removing of first element from original List or array 
   print (mulAll [2])
import Data.Char

-- Empty board
emptyBoard = ["..." , "..." , "..."]

--Returns winner
winner :: [String] -> Char
winner [[a,b,c] , [d,e,f] , [g,h,i]]
       | a==b && b==c && a /= '.'  = a
       | d==e && e==f && d /= '.'  = d
       | g==h && h==i && g /= '.'  = g
       | a==d && d==g && a /= '.'  = a
       | b==e && e==h && b /= '.'  = b
       | c==f && f==i && c /= '.'  = c
       | a==e && e==i && a /= '.'  = a
       | c==e && e==g && c /= '.'  = c
       | '.' `elem` [a,b,c,d,e,f,g,h,i] = '?' -- Still game is not over
       | otherwise                      = '-' -- Tie


--Replace iTH element of list with a
replace :: Int -> a -> [a] -> [a]
replace 0 a (x:xs) = a:xs
replace i a (x:xs) = x:(replace (i-1) a xs)

--Replaces the character at position rTH row,cTh coloumn in board of Game
play :: Int -> Int -> Char -> [String] -> [String]
play r c a board = replace r (replace c a (board !! r)) board

--return value of board with player to play , value function can tell when winning is possible
value :: Char -> [String] -> Int
value player board
      | w == 'X' = 1
      | w == '0' = -1
      | w == '-' = 0
      | player == 'X' = maximum [value '0' (play r c 'X' board)| r <- [0..2] , c <- [0..2] , board !! r !! c == '.' ] -- if it is X's turn then it's value will be maximum in successor board.
      | otherwise = minimum [value 'X' (play r c '0' board)| r <- [0..2] , c <- [0..2] , board !! r !! c == '.' ]
      where w = winner board

-- we want to know which is best Move . With given List of Boards we can find the best move for X using bestOf function.
--To find best move then we consider all places r <- [0..2] and c <- [0..2] where X might play and take best one move.
-- bestOf returns from list of boards where X has just moved , the one with MAX value .
bestOf :: [[String]] -> [String]
bestOf [x] = x
bestOf (x:xs) 
       | value '0' x > value '0' bxs = x
       | otherwise = bxs
       where bxs = bestOf xs

--Return Board after X's best move
bestMove :: [String] -> [String]
bestMove board  = bestOf [play r c 'X' board | r <- [0..2] , c <- [0..2] , board !! r !! c == '.' ]       

      
main::IO()
main = do
   -- print (winner ["XXX" , "..." , "OO."])  'X'
   --print (replace 4 'p' "iamViVEK")  "iamVpVEK"
   --print (play 1 0 'X' emptyBoard)   ["...","X..","..."]
   --print (play 2 1 '0' (play 1 0 'X' emptyBoard))    ["...","X..",".0."]
   --print (value 'X' ["..." , ".0." , "XX0"])   0
     --print (bestMove emptyBoard) ["...","...","..X"]  
     --print (play 1 0 '0' (bestMove emptyBoard))   ["...","0..","..X"]
     --print (bestMove (play 1 0 '0' (bestMove emptyBoard)) )    ["...","0..","X.X"]
     --print (play 1 1 '0' (bestMove (play 1 0 '0' (bestMove emptyBoard)) ) )   ["...","00.","X.X"]
     --print (bestMove (play 1 1 '0' (bestMove (play 1 0 '0' (bestMove emptyBoard)) ) ))  ["...","00.","XXX"]
     print (winner (bestMove (play 1 1 '0' (bestMove (play 1 0 '0' (bestMove emptyBoard)) ) )) ) -- This give winner as X
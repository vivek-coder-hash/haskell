multiplyThreeNumbers::Int->(Int->(Int->Int))
multiplyThreeNumbers x y z = x*y*z
                     
divideBy10:: Double->Double
divideBy10 x = (x/10) 

add1::Int->Int
add1 x = x+1

add1ToEach::[Int]->[Int]
add1ToEach [] = []
add1ToEach(x:xs) = add1 x : add1ToEach(xs)

multFour:: Int->Int
multFour x =4*x

multFourEach::[Int]->[Int]
multFourEach [] =[]
multFourEach(x:xs) = multFour x : multFourEach(xs)

addx::Int->Int
addx x = x+x

main::IO()
main = do
    let multTwoWithNine = multiplyThreeNumbers 9
    print(multiplyThreeNumbers 5 4 3)
    print(multTwoWithNine 2 3)
    let multwith18 = multTwoWithNine 10
    print(multwith18 10)
    print(divideBy10 200)
    print(add1ToEach [1,2,3,4])
    print (map (max 3) [1,9,0,8]) --map function
    print (map add1 [0,1,2,3])
    print (multFourEach [4,5,6])
    print (map multFour [1,2,3])
    print (map addx [3,2,1])
    print (zipWith (*) [1,2,3] [10,9,8]) -- zipWith is another higher order function .
    print(filter (>5) [1..20])  --filter is higher order function .
    putStrLn (filter (`elem` [' ','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'] ) "u LaUgH aT mE BeCaUsE I aM diFfeRent")
    print (map (\x->x+1) [1..5]) -- This is lambda function .  \x=x+1 is equivalent to line 7 and 8 
    print (map (+1) [1..5]) -- same result as line 41
    print (foldl (+) 3 [2,3,4]) -- foldl is same as reduce HOF in javascript
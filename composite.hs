addx::Int->Int
addx y = y+1

addz::Int->Int
addz p =p*2


main::IO()
main=do
    print ((addx.addz) (10))
    print (addx(addz 10)) -- Line 11 and 10 both have same result.
    print (foldl (*) 2  [-1,-2,-4]) -- sum of elements of List or array
    print (abs(sum (map (\x->x+2) [-1,-2,-4])))
    print (sum ( filter odd (map (\x-> x*x) [1..10])))

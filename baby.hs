
double::Double->IO() --This is type of function.
double x = do
    
    
    print (2*x)


doubleUs:: Double->Double->IO()
doubleUs a b = do
    print (2*a + 2*b)



    
 
    
main::IO()
main = do
    double 8.3 
    doubleUs 8 10
    putStrLn('A':" SMALL CAT") --  A SMALL CAT
    print ([x*2 | x <- [1..10]])
    print ([x*y| x <- [3..10] , y <-[5,9] , x /= 15 , x*y>27])
    

    


-- we want to return from function

cube:: Int -> Int   -- Int is paramaeter and another Int is return value .IO() is not there because we are not consoling the value.
cube num = num*num*num


sayHi :: String->String
sayHi name = "hello " ++ name  -- Returning value is "hello " ++ name

main :: IO()
main=do
    let result = cube 3
    print (result)
    let hiResult = sayHi "vivek"
    putStrLn (hiResult)

    


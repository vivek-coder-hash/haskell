number::Int
number = 100

name::String
name="Vivek" -- String has double quotes ""

myLetter:: Char
myLetter='v'    -- char has single quotes ''

decimalNumber::Double
decimalNumber = 3.5


main=do
    putStrLn (name ++ " got " ++ show number ++ " marks in Maths.")
    print myLetter
    putStrLn (show decimalNumber)

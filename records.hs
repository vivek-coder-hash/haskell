data Student = Student {
name::String ,
major::String ,
age::Int,
gpa::Double

} deriving Show  -- In order to print Student instance in console , "deriving show" is required


main :: IO()
main = do
    let student1 = Student {name="Vivek" , major="Bio",age=100,gpa=10.00}
    print student1
    putStrLn (name student1)
    print (gpa student1)
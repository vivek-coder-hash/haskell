bmi::Double->Double->String
bmi weight height = do
    if (weight / height ^2 <=18.5)
        then  "you are underweight"

     else if  (weight / height ^2 <=25.0)  
         then  "you are normal and ugly!!"

      else 
            "you are fat"   

 -- Guard syntax for function
bmiTell::Double->Double->String
bmiTell w h | x<=18.5 = "you are under weight"
          | x<=25.0 = "you are normal weight"
          |x<=30 = "you are overweight"
          | otherwise = "you are whale"
          where x = w/h^2


main::IO()
main = do
   -- putStrLn(  bmi 85.0 1.90)
   putStrLn(bmiTell 85.0 1.90 )
   


travelToWork :: String -> Bool-> IO()
travelToWork weather isRaining = do
    if weather == "cloudy" && isRaining
        then putStrLn "Drive to work"
        else putStrLn "Don't go to work"
    -- if weather == "sunny"
    -- then putStrLn "Back to work"
    -- else if weather == "cloudy"
    -- then putStrLn "Driving to work by bike"
    -- else putStrLn "Stay Home"







main :: IO()
main=do
    let isRaining = True    -- Boolean value
    travelToWork "cloudy" isRaining

     

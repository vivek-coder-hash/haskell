import Data.List
import qualified Data.Map



numUniques :: (Eq a) => [a] -> Int  
numUniques = length . nub

main::IO()
main=do
    print(numUniques[1,2,3,55,55,55,66]) --5 is answer . nub is function which count unique number of elements in list.
    


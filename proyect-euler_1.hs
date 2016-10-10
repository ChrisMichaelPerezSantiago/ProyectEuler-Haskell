


--By Chris M. Perez Santiago , 2016/10/10


{-
Multiples of 3 and 5
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
-}



multiple_of :: Int -> Bool
multiple_of y = mod y 3 == 0 ||
                mod y 5 == 0


all_natural_numbers_below ::  Int -> [Int]
all_natural_numbers_below x = [y | y <- [1..x],multiple_of y]


sum_list :: Int -> Int
sum_list x = sum (all_natural_numbers_below x)



main = do
    --let test = 9
    let x  = 999
    print(sum_list x)


--By Chris M. Perez Santiago , 2016/11/10



{-
Smallest multiple
Problem 5

2520 is the smallest number that can be divided by each of the numbers from 1 to
10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?
-}



smallest_number_divided_by_each_number = map (\x -> x + 0) least_common_multiple


least_common_multiple :: [Int]
least_common_multiple = [foldr1 lcm[1..20]]


main = do
    print(least_common_multiple)

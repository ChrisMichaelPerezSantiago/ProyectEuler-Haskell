


--By Chris M. Perez Santiago , 2016/11/10


{-
Largest palindrome product
Problem 4

A palindromic number reads the same both ways. The largest palindrome
made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
-}


product_of_two_3_digit_numbers = [x | y <- takeWhile(<=999)[100.. ],
                                      z <- takeWhile(<=999)[y..   ],
                                      let x = y*z, let r = show x,
                                                    r == reverse r]


largest_palindrome :: Int
largest_palindrome = last[maximum $ product_of_two_3_digit_numbers]



main = do print(largest_palindrome)

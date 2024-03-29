module FizzBuzz exposing (fizzbuzz)

fizzbuzz : Int -> String
fizzbuzz n =
    List.range 1 n
    |> List.map is_x_fizz_buzz 
    |> String.join "\n"

is_x_fizz_buzz : Int -> String
is_x_fizz_buzz x = 
    if modBy 15 x == 0 then "FizzBuzz"
    else if modBy 5 x == 0 then "Buzz"
    else if modBy 3 x == 0 then "Fizz"
    else String.fromInt x


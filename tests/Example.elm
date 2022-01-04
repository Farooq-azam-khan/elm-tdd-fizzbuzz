module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)

import FizzBuzz exposing (fizzbuzz)

suite : Test
suite =
    describe "Fizzbuzz tdd"
    [ test "fizzbuzz 1" <| 
        \_ -> Expect.equal (fizzbuzz 1) "1"
    , test "fizzbuzz 2" <|
        \_ -> Expect.equal (fizzbuzz 2) "1\n2"
    , test "fizzbuzz 3" <|
        \_ -> Expect.equal (fizzbuzz 3) "1\n2\nFizz"
    , test "fizzbuzz 4" <|
        \_ -> Expect.equal (fizzbuzz 4) "1\n2\nFizz\n4"
    , test "fizzbuzz 5" <| 
        \_ -> Expect.equal (fizzbuzz 5) "1\n2\nFizz\n4\nBuzz"
    ]

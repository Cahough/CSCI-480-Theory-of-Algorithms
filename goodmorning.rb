#!/usr/bin/ruby

# Carter Hough
# 09/01/18
# CSCI 480
# Dr. MacEvoy

# This program is a solution to the Kattis problem 'Good Morning!' which can be found at https://open.kattis.com/problems/goodmorning

def solve
    # Get first line of input for number of test cases to follow and cast to integer
    num_test_cases = gets.chomp.to_i
    for i in 1..num_test_cases
        testCase = gets.chomp
        puts testCase
    end
end

# Run automated unit tests if first system argument after program call is "test", else run program normally per Kattis expected output.
if ARGV[0] == "test"
    require 'test/unit'
    
    # Unit tests
    class TestMethods < Test::Unit::TestCase 
        # def test_shiftLeft_simple
        #     assert_equal("I AM FINE TODAY.", shiftLeft("O S, GOMR YPFSU/"))
        # end
    end
else
    solve()
end
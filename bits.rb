#!/usr/bin/ruby

# Carter Hough
# 09/02/18
# CSCI 480
# Dr. MacEvoy

# This program is a solution to the Kattis problem 'bits' which can be found at https://open.kattis.com/problems/bits

def numOneBits(integer)
    # Convert decimal integer to binary and return number of "1"s in the string
    return integer.to_s(2).count("1")

end
    
def solve
    num_test_cases = gets.chomp.to_i
    for i in 1..num_test_cases
        test_case = gets.chomp.to_i
        numOneBits(test_case)
    end
end

# Run automated unit tests if first system argument after program call is "test", else run program normally per Kattis expected output.
if ARGV[0] == "test"
    require 'test/unit'
    
    # Unit tests
    class TestMethods < Test::Unit::TestCase 
        def test_numOneBits_simple
            assert_equal(2, numOneBits(9))
        end
    end
else
    solve()
end
#!/usr/bin/ruby

# Carter Hough
# 09/03/18
# CSCI 480
# Dr. MacEvoy

# This program is a solution to the Kattis problem 'bits' which can be found at https://open.kattis.com/problems/bits

def numOneBits(integer)
    # Convert decimal integer to binary and return number of "1"s in the string
    return integer.to_s(2).count("1")
end
    
def solve
    numTestCases = gets.chomp.to_i
    maxOneBitsList = []

    for _ in 1..numTestCases
        testCase = gets.chomp.to_i
        maxOneBits = 0
        while testCase > 0
            maxOneBits = [maxOneBits, numOneBits(testCase)].max
            testCase /= 10
        end
        maxOneBitsList.append(maxOneBits)
    end

    puts maxOneBitsList
end

# Run automated unit tests if first system argument after program call is "test", else run program normally per Kattis expected output.
if ARGV[0] == "test"
    require 'test/unit'
    
    # Unit tests
    class TestMethods < Test::Unit::TestCase 
        def test_numOneBits_simple
            assert_equal(2, numOneBits(9))
        end
        def test_numOneBits_lower_bound
            assert_equal(0, numOneBits(0))
        end
        def test_numOneBits_upper_bound
            assert_equal(1, numOneBits(2**31))
        end
        def test_numOneBits_kattis_samples
            assert_equal(1, numOneBits(1))
            assert_equal(1, numOneBits(2))
            assert_equal(2, numOneBits(3))
            assert_equal(1, numOneBits(4))
            assert_equal(2, numOneBits(10))
            assert_equal(5, numOneBits(94))
        end
    end
else
    solve()
end
#!/usr/bin/ruby

# Carter Hough
# 08/31/18
# CSCI 480
# Dr. MacEvoy

# This program is a solution to the Kattis problem 'WERTYU' which can be found at https://open.kattis.com/problems/wertyu


# shiftLeft function accepts a string in all uppercase letters, and returns a string with each character in the string shifted one key to the left on the keyboard.
def shiftLeft(string)
    # Ruby hash (dictionary) consisting of key->value pairs to map each applicable key to the key on its left
    dictionary = { "1" => "`", "2" => "1", "3" => "2", "4" => "3", "5" => "4", "6" => "5", "7" => "6", "8" => "7", "9" => "8", "0" => "9", "-" => "0", "=" => "-",
                "W" => "Q", "E" => "W", "R" => "E", "T" => "R", "Y" => "T", "U" => "Y", "I" => "U", "O" => "I", "P" => "O", "[" => "P", "]" => "[", "\\" => "]",
                "S" => "A", "D" => "S", "F" => "D", "G" => "F", "H" => "G", "J" => "H", "K" => "J", "L" => "K", ";" => "L", "\'" => ";",
                "X" => "Z", "C" => "X", "V" => "C", "B" => "V", "N" => "B", "M" => "N", "," => "M", "." => ",", "/" => ".",
                " " => " " }
    
    # Splits the string into individual characters
    chars = string.split('')
    answer = ""
    # Iterates through each character in the string, gets the corresponding value in the dictionary for that char as the key, and appends the returned value to string 'answer'
    chars.each { |c|
        answer << dictionary[c]
    }

    return answer
end    

# solve function to get console input for the string, and print returned value from shiftLeft() to console
def solve
    usr_input = gets.chomp # .chomp removes line break from input
    puts shiftLeft(usr_input)
end


# Run automated unit tests if first system argument after program call is "test", else run program normally per Kattis expected output.
if ARGV[0] == "test"
    require 'test/unit'
    
    # Unit tests
    class TestMethods < Test::Unit::TestCase 
        def test_shiftLeft_simple
            assert_equal("I AM FINE TODAY.", shiftLeft("O S, GOMR YPFSU/"))
        end
        def test_shiftLeft_not_equal
            assert_not_equal("THIS IS FALSE", shiftLeft("NOT TRUE"))
        end
        def test_shiftLeft_all_chars
            assert_equal("`1234567890- QWERTYUIOP[] ASDFGHJKL; ZXCVBNM,.", shiftLeft("1234567890-= WERTYUIOP[]\\ SDFGHJKL;\' XCVBNM,./"))
        end
        def test_shiftLeft_first_char_wrong
            assert_not_equal("ELLO WORLD", shiftLeft("JR;;P EPT;F"))
        end
        def test_shiftLeft_last_char_wrong
            assert_not_equal("HELLO WORL", shiftLeft("JR;;P EPT;F"))
        end
        def test_shiftLeft_max_input
            assert_equal("Q"*10000, shiftLeft("W"*10000))
        end
        def test_shiftLeft_min_input
            assert_equal("Q", shiftLeft("W"))
        end
        def test_shiftLeft_empty_input
            assert_equal("", shiftLeft(""))
        end
        def test_shiftLeft_blank_space_input
            assert_equal(" ", shiftLeft(" "))
        end
    end
else
    solve()
end
#!/usr/bin/ruby -w

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

solve()
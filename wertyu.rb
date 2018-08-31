#!/usr/bin/ruby -w

# Carter Hough
# 08/31/18
# CSCI 480
# Dr. MacEvoy

# This program is a soltuion to the Kattis problem 'WERTYU' which can be found at https://open.kattis.com/problems/wertyu

def shiftLeft(string)
    dictionary = { "1" => "`", "2" => "1", "3" => "2", "4" => "3", "5" => "4", "6" => "5", "7" => "6", "8" => "7", "9" => "8", "0" => "9", "-" => "0", "=" => "-",
                "W" => "Q", "E" => "W", "R" => "E", "T" => "R", "Y" => "T", "U" => "Y", "I" => "U", "O" => "I", "P" => "O", "[" => "P", "]" => "[", "\\" => "]",
                "S" => "A", "D" => "S", "F" => "D", "G" => "F", "H" => "G", "J" => "H", "K" => "J", "L" => "K", ";" => "L", "\'" => ";",
                "X" => "Z", "C" => "X", "V" => "C", "B" => "V", "N" => "B", "M" => "N", "," => "M", "." => ",", "/" => ".",
                " " => " " }
    
    chars = string.split('')
    answer = ""
    chars.each { |c|
        answer << dictionary[c]
    }

    return answer
end    

def solve
    usr_input = gets.chomp
    puts shiftLeft(usr_input)
end

solve()
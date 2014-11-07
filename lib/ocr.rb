require './reader'

string_number = '     |  |'

f_line = string_number[0..2]
s_line = string_number[3..5]
l_line = string_number[6..8]

r = Reader.new('../spec/acc_number.txt')
r.grave

NUMBERS = [
    Hash['   '=> [1,4], ' _ ' => [0,2,3,5,6,7,8,9]],
    Hash['  |' => [1,7], ' _|' => [2,3], '|_|' => [4,8,9], '| |' => [0], '|_ ' => [5,6]],
    Hash['  |' => [1,4,7], '|_|' => [0,6,8], '|_ '=> [2], ' _|' => [3,5,9]]
]

# puts NUMBERS[0]["   "]&NUMBERS[0][" | "]

c = "ola"

puts c.include?("o")




calc = 6*9+6*8+4*7+3*6+7*5+1*4+4*3+9*2+5*1

puts calc%11
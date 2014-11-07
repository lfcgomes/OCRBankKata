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




calc = 4*9+5*8+7*7+5*6+0*5+8*4+0*3+0*2+0*1
puts calc%11
class Reader
  NUMBERS = [
      Hash['   '=> [1,4], ' _ ' => [0,2,3,5,6,7,8,9]],
      Hash['  |' => [1,7], ' _|' => [2,3], '|_|' => [4,8,9], '| |' => [0], '|_ ' => [5,6]],
      Hash['  |' => [1,4,7], '|_|' => [0,6,8], '|_ '=> [2], ' _|' => [3,5,9]]
  ]

  def initialize(filename)
    read_from_file(filename)
  end

  def interpret_number(string_number)
    f_line = string_number[0..2]
    s_line = string_number[3..5]
    l_line = string_number[6..8]

    if NUMBERS[0].has_key?(f_line) and NUMBERS[1].has_key?(s_line) and NUMBERS[2].has_key?(l_line)
      (NUMBERS[0][f_line]&NUMBERS[1][s_line]&NUMBERS[2][l_line])[0]
    else
      '?'
    end
  end

  def read_from_file(filename)
    @lines = []
    i=0
    f = File.open(filename, "r")
    f.each_line do |line|
      @lines[i] = line
      i+=1
    end
  end

  def grave
    i = 0
    c = ""
    until i > 8 do
      letter = ""
      letter << @lines[0][3*i,3]
      letter << @lines[1][3*i,3]
      letter << @lines[2][3*i,3]
      c << interpret_number(letter).to_s
      i+=1
    end
    c << " ILL" if c.include?("?")
    c
  end

end
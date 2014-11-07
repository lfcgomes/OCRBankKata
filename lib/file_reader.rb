class FileReader

  attr_accessor :lines

  def initialize(filename)
    self.lines = []
    i=0
    f = File.open(filename, "r")
    f.each_line do |line|
      self.lines[i] = line
      i+=1
    end

  end

end
require 'rspec'
require 'reader'

describe 'My behaviour' do

  it 'should be equal to 0' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _ | ||_|').should eq(0)
  end

  it 'should be equal to 1' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number('     |  |').should eq(1)
  end

  it 'should be equal to 2' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _  _||_ ').should eq(2)
  end

  it 'should be equal to 3' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _  _| _|').should eq(3)
  end

  it 'should be equal to 4' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number('   |_|  |').should eq(4)
  end

  it 'should be equal to 5' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _ |_  _|').should eq(5)
  end

  it 'should be equal to 6' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _ |_ |_|').should eq(6)
  end

  it 'should be equal to 7' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _   |  |').should eq(7)
  end

  it 'should be equal to 8' do
    r = Reader.new('spec/acc_number.txt')
    r.interpret_number(' _ |_||_|').should eq(8)
  end

  it 'should be equal to 9' do
    r = Reader.new('spec/acc_number.txt')
    expect(r.interpret_number(' _ |_| _|')).to eq(9)
  end

  it 'should be equal to 123456789' do
    r = Reader.new('spec/acc_number.txt')
    r.grave.should eq("123456789")
  end

  it 'should be equal to 111111111' do
    r = Reader.new('spec/111.txt')
    r.grave.should eq("111111111")
  end

  it 'should be equal to 555555555' do
    r = Reader.new('spec/555.txt')
    r.grave.should eq("555555555")
  end

  it 'should be equal to 999999999' do
    r = Reader.new('spec/999.txt')
    r.grave.should eq("999999999")
  end

  it 'should be equal to 000000051' do
    r = Reader.new('spec/051.txt')
    r.grave.should eq("000000051")
  end

  it 'should be equal to 49006771? ILL' do
    r = Reader.new('spec/ill1.txt')
    r.grave.should eq("49006771? ILL")
  end

  it 'should be equal to 1234?678? ILL' do
    r = Reader.new('spec/ill2.txt')
    r.grave.should eq("1234?678? ILL")
  end

end
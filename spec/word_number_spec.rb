require('rspec')
require('word_number')
require('pry')

describe('Fixnum#word_number') do
  it('take 1 and return "one"') do
    expect((1).word_number).to(eq("one"))
  end

  it('take any single digit number and return a word') do
    expect((9).word_number).to(eq("nine"))
  end

  it('take 10 and return "ten"') do
    expect((10).word_number).to(eq("ten"))
  end

  it('take any 2 digit number from 10 to 20 and returns the written word') do
    expect((19).word_number).to(eq("nineteen"))
  end

  it('take any 2 digit number from 21 to 30 and returns the written word') do
    expect((29).word_number).to(eq("twenty nine"))
  end
end

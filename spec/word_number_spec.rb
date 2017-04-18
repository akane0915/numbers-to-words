require('rspec')
require('word_number')

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
end

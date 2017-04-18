require('rspec')
require('word_number')

describe('Fixnum#word_number') do
  it('take a single digit number and return a word') do
    expect((1).word_number).to(eq("one"))
  end
end

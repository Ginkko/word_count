require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do

  it("Accepts input of two strings and returns a 1 if the first and second string match.") do
    expect("hello".word_count("hello")).to(eq(1))
  end

end

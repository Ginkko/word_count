require('rspec')
require('pry')
require('word_count')

describe('String#word_count') do

  it("Accepts input of two strings and returns a 1 if the first and second string match.") do
    expect("hello".word_count("hello")).to(eq(1))
  end

  it("Accepts input of two strings, compares the first to the second, and returns the total number of matching words.") do
    expect("hello".word_count("hello are you there hello")).to(eq(2))
  end

  it("Supports inputs of non word characters (ie , $ * 0 etc.) in the second string.") do
    expect("hello".word_count("hello, are you there? hello?")).to(eq(2))
  end

  it("Supports mixed casing of words between inputs") do
    expect("hello".word_count("HeLLo, are you THErE? HeLLo?")).to(eq(2))
  end

end

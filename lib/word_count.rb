class String
  define_method(:word_count) do |master_sentence|
  score = 0
  master_word_downcase = self.downcase() #Created this variable to avoid using .downcase() on each iteration of the each() loop.
  master_sentence_array = master_sentence.downcase().split(/\W+/) #This is a regular expression used split on any "non word" characters.

  master_sentence_array.each() do |compare_word|
    if master_word_downcase.eql?(compare_word)
      score += 1
    end
  end

  score

  end
end

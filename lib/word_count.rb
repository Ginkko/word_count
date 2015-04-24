class String
  define_method(:word_count) do |master_sentence|
  score = 0

  master_sentence_array = master_sentence.split(/\W+/) #This is a regular expression used split on any "non word" characters.
  
  master_sentence_array.each() do |compare_word|
    if self.eql?(compare_word)
      score += 1
    end
  end

  score

  end
end

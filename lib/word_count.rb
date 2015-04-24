class String
  define_method(:word_count) do |master_sentence|
  score = 0

  master_sentence_array = master_sentence.split(" ")

  master_sentence_array.each() do |compare_word|
    if self.eql?(compare_word)
      score += 1
    end
  end


  score

  end
end

class String
  define_method(:word_count) do |master_sentence|
    score = 0
    master_word_downcase = self.downcase()
    master_sentence_array = master_sentence.downcase().split(/\W+/) #The argument added to split is a regular expression used to specify any non letter characters as the split trigger.

    master_sentence_array.each() do |compare_word|
      if master_word_downcase.eql?(compare_word)
        score += 1
      end
    end
    score
  end
end

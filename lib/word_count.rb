class String
  define_method(:word_count) do |master_sentence|
  score = 0

  if self.eql?(master_sentence)
    score += 1
  end

  score

  end
end

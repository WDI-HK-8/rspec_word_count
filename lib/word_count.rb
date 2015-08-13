class String
  def unique_word_count
    array = self.scan(/[\w']+/)
    new_array = []
    array.each do |word|
      new_array.push(word) if array.include?(word) === false
    end
    return new_array.length
  end
  def word_frequency_count
    hash = {}
    array = self.scan(/[\w']+/)
    array.each do |word|
      hash.word += 1 if hash.has_key?(word)
      hash.word = 1 if hash.has_key?(word) === false
    end
    return hash
  end
end

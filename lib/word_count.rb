class String
  def unique_word_count
    Self.uniq.count
  end
  
  def word_frequency_count
    words = Self.split(" ")
    frequency = Hash.new(0)

    words.each do |word|
      frequency[word] += 1
    end

    print frequency

  end  
end
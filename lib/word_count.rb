class String
  def unique_word_count
    count = 0
    array = self.split(' ')
    array.sort
    array.each do |word|
      if (word =! array[(word.indexOf) - 1])
        count += 1
      end
    end
  end
      

  end
  
  def word_frequency_count
    hash = Hash.new(0)
    array = self.split(' ')
    array.each {|word| hash[word] += 1}
    return hash
  end  
end
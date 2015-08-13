class String
  def unique_word_count
    return 0 if self.length == 0
    return self.gsub(/[^a-z ]/, '').scan(/\w+/).length
  end
  
  def word_frequency_count
    return 0 if self.length == 0
    array = self.scan(/\w+/)
    init = array[0]
    count = 1
    array.length.times {
      
    }
  end  
end
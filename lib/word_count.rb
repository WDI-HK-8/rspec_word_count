class String
  def unique_word_count
    self.scan(/\w+/).uniq.count
  end
  
  def word_frequency_count
  end  
end


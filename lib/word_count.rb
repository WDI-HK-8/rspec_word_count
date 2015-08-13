class String
  def unique_word_count
    return 0 if self.length == 0
    return self.gsub(/[^a-z ]/, '').scan(/\w+/).uniq.length
  end
  
  def word_frequency_count
    return 0 if self.scan(/\w+/).length == 0
    return self.gsub(/[^a-z ]/, '').scan(/\w+/).length - self.gsub(/[^a-z ]/, '').scan(/\w+/).uniq.length + 1
  end  
end
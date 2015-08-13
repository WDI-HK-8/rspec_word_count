class String
  def unique_word_count
    count = 0 
    if self == ""
      0
    else self.each_char do |char|
        if char != /[^[:alnum:]]/
          count += 1
        else
          count = 1
        end
      end
      count
    end
  end
  
  def word_frequency_count
  end  
end
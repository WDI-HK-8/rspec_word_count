class String
  def unique_word_count
    self.split.uniq.count
  end
  
  def word_frequency_count
    hash = Hash.new(0)

    self.split.each do |x|
      hash[x] += 1
    end

    hash.each do |z, x|
      puts "#{z} appears #{x} times"
    end
  end  
end
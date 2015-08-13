class String
  def unique_word_count
    #split scan for spaces
    string_split = split(" ")
    return string_split.length
  end
  
  def word_frequency_count
    return {} if length == 0
    string_split = split(" ")
    string_hash = Hash.new(0)
    string_split.each do |string|
      string_hash[string] += 1
    end
    string_hash.each {|word, value| 
      return {word => value} if value > 1
    }
    return {"values" => 1}
  end
end
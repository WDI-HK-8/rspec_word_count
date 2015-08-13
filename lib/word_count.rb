class String
  def unique_word_count
  	array_of_individual_words = words_from_string(self)
  	return 0 if array_of_individual_words.length == 0
  	return array_of_individual_words.uniq.count
  end
  
  def word_frequency_count
    words = words_from_string(self)
    wordHash = Hash.new
    while (words.length > 0) do
        frequency = 1
        for i in 1..words.length-1
            frequency+=1 if words[0]==words[i]
        end
        wordHash[words[0].to_s]=frequency
        words.delete(words[0])
    end
    wordHash
  end

  private

  def words_from_string(original_string)
  	return original_string.downcase.gsub(/[^a-z0-9\s]/i, '').split
  end
end
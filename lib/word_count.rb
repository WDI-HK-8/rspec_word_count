class String
  def unique_word_count
  	word_count = 0
  	words = self.downcase.gsub(/[^a-z0-9\s]/i, '').split
	for i in 0..words.length-1
	 	unique = true
	 	for j in i+1..words.length-1
	 	    if words[i]==words[j]
	 	        unique = false
	    	end
	    end
	     word_count += 1 if unique==true
	 end
	 word_count
  end
  
  def word_frequency_count
    words = self.downcase.gsub(/[^a-z0-9\s]/i, '').split
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
end
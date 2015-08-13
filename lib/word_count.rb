class String
  def unique_word_count # instance methods
    # For example, "Hello" is a string, and it's an instance of the class String
    # How do I refer to the instance here? self
    array_of_individual_words = words_from_string(self)
    # ["I'm", "abc", "abc", "hello", "world"]
    array_of_individual_words.uniq.count
    # ["I'm", "abc", "hello", "world"].count -> 4
  end
  
  def word_frequency_count
    array_of_individual_words = words_from_string(self)

    counts = Hash.new(0)

    array_of_individual_words.each do |word|
      counts[word] += 1
    end

    counts

    # {
    #   "I'm": 1,
    #   "abc": 2,
    #   "hello": 1,
    #   "world": 1
    # }
  end

  private

  def words_from_string(original_string)
    # Splitting a sentence into different words
    # By default, original_string.split === original_string.split(" ")
    # "I'm abc abc hello world"
    original_string.downcase.scan(/[\w']+/)
  end
end

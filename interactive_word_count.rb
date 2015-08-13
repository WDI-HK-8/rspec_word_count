require './lib/word_count'

puts "Enter a phrase"
user_phrase = gets

class String
  def unique_word_count
    word_list = self.to_s.split(' ')
    unique_word_list = []
    word_hash = {}
    word_list.each {|x|                 #bug here
      if word_list.count(x) == 1
        unique_word_list << x
        word_hash[x] = 1
      elsif word_list.count(x) == 0
        0
        word_hash = {}
      elsif word_list.count(x) > 1
        unique_word_list << x           #adds it once only
        word_list.delete(x)             #removes all traces of it in original phrase
      end

    }
    unique_word_list.count
  end


  def word_frequency_count
    self.to_s.split(' ').count
  end

end

puts "Number of unique words: #{user_phrase.unique_word_count}"
puts "Word counts: #{user_phrase.word_frequency_count}"
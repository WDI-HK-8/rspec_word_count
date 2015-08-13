class String
  attr_reader :words
  def unique_word_count
    "#unique_word_count" do
    words.uniq.size
  end
  
  def word_frequency_count
    "#word_frequency_count" do
    self.scan(/\S+/).size
    # words.size
  end  
end
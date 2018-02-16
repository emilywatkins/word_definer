class Word
  @@word_list = []

  attr_reader :word

  def initialize(word)
    @word = word
  end

  def self.all
    @@word_list
  end

  def save
    @@word_list.push(self)
  end

end

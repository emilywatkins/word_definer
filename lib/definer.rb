class Word
  @@word_list = []

  attr_reader :word, :definition

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
  end

  def self.all
    @@word_list
  end

  def save
    @@word_list.push(self)
  end

  def self.clear
    @@word_list = []
  end

end

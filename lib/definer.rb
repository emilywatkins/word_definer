class Word
  @@word_list = []

  attr_reader :word

  def initialize(attributes)
    @word = attributes.fetch(:word)
  end

  def self.all

  end

end

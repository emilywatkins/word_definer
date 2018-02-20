class Word
  @@word_list = []

  attr_accessor :word, :definition

  def initialize(attributes)
    @word = attributes.fetch(:word)
    # @definition = attributes.fetch(:definition)
    @definition = []
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

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.find(name)
  end

end

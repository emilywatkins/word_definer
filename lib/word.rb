class Word
  @@word_list = []

  attr_accessor :word, :definition

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = []
  end

  def self.all
    @@word_list
  end

  def self.save(word)
    if !@@word_list.include?(word)
      @@word_list.push(word)
    end
  end

  def self.clear
    @@word_list = []
  end

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.find(word)
    definitions = []
    @@word_list.each do |entry|
      if entry.word == word
        definitions += (entry.definition)
      end
    end
    definitions
  end
end

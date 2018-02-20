class Word
  @@word_list = []

  attr_accessor :word, :definitions

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definitions = []
  end

  def self.all
    @@word_list
  end

  def self.save(word)
    if !@@word_list.map {|w| w.word}.include? word.word
      @@word_list.push(word)
    end
  end

  def self.clear
    @@word_list = []
  end

  def add_definition(definition)
    @definitions.push(definition)
  end

  def self.find(word)
    @@word_list.each do |entry|
      if entry.word == word
        return entry
      end
    end
    nil
  end
end

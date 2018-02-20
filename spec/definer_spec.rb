require("sinatra")
require("rspec")
require("pry")
require("definer")

describe('Word') do
  before() do
    Word.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word to the list') do
      word = Word.new({:word=> 'squirrel'})
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('.clear') do
    it('clears words from the list') do
      word = Word.new({:word=> 'squirrel'})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a definition to the definition array') do
      item = Word.new({:word=>'squirrel'})
      item.save()
      item.add_definition('woodland creature')
      expect(item.definition()).to(eq(['woodland creature']))
    end
  end

  describe('.find') do
    it('finds a definition based on its name') do
      word = Word.new({:word=> 'squirrel'})
      word.add_definition('woodland creature')
      expect(word.find('squirrel')).to(eq('woodland creature'))
    end
  end
end

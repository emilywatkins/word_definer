require("sinatra")
require("rspec")
require("pry")
require("word")

describe('Word') do
  before() do
    Word.clear()
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.save') do
    it('saves a word to the list') do
      word = Word.new({:word=> 'squirrel'})
      Word.save(word)
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('.clear') do
    it('clears words from the list') do
      word = Word.new({:word=> 'squirrel'})
      Word.save(word)
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#add_definition') do
    it('adds a definition to the definition array') do
      item = Word.new({:word=>'squirrel'})
      Word.save(item)
      item.add_definition('woodland creature')
      expect(item.definition()).to(eq(['woodland creature']))
    end
  end

  describe('.find') do
    it('returns a definition based on its name') do
      word = Word.new({:word=> 'squirrel'})
      word.add_definition('woodland creature')
      Word.save(word)
      expect(Word.find('squirrel')).to(eq(['woodland creature']))
    end
  end

  describe('.find') do
    it('returns multiple definitions based on its name') do
      word = Word.new({:word=> 'squirrel'})
      word.add_definition('woodland creature')
      Word.save(word)
      word.add_definition('teeth')
      expect(Word.find('squirrel')).to(eq(['woodland creature', 'teeth']))
    end
  end
end

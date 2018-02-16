require("sinatra")
require("rspec")
require("pry")
require("definer")

describe('Word') do

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a word to the list') do
      word = Word.new('squirrel')
      word.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe('.clear') do
    it('clears words from the list') do
      word = Word.new('squirrel')
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

end

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


end

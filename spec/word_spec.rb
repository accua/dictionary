require('rspec')
require('word')

describe(Word) do

  before() do
    Word.clear()
    @word = Word.new(:word => "dog", :definition => "Man's best friend")
    @word.save()
    @word2 = Word.new(:word => "cat", :definition => "Couch killing machine")
    @word2.save()
  end

  describe("#word") do
    it("returns the inputted word") do
      expect(@word.word()).to(eq("dog"))
    end
  end

  describe("#definition") do
    it("returns the definition of the inputted word") do
      expect(@word.definitions()).to(eq([]))
    end
  end

  describe(".all") do
    it("returns the array of words") do
      expect(Word.all()).to(eq([@word, @word2]))
    end
  end

  describe("#save") do
    it("saves the word object to the words array") do
      expect(Word.all().length()).to(eq(2))
    end
  end

  describe(".clear") do
    it("clears the words array") do
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the word") do
      expect(@word.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns the specified word object that pertains to the id argument") do
      expect(Word.find(@word2.id())).to(eq(@word2))
    end
  end

  # describe("#add_definition") do
  #   it("add definition to the specified word object") do
  #     expect(@word.add_definition)
  #   end
  # end
end

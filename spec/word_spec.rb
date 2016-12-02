require('rspec')
require('word')

describe(Word) do

  before() do
    @word = Word.new(:word => "dog", :definition => "Man's best friend")
  end

  describe("#word") do
    it("returns the inputted word") do
      expect(@word.word()).to(eq("dog"))
    end
  end

  describe("#definition") do
    it("returns the definition of the inputted word") do
      expect(@word.definition()).to(eq("Man's best friend"))
    end
  end

  describe(".all") do
    it("returns the array of words") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the word object to the words array") do
    @word.save()
    expect(Word.all()).to(eq([@word]))
    end
  end

#
#   describe("#id") do
#     it("returns the id of the word")
#   end
end

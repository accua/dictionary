require('rspec')
require('definition')
require('pry')

describe(Definition) do
  before() do
    Definition.clear()
    @definition = Definition.new(:definition => "Lorem Ipsum")
    @definition.save()
  end
  
  describe("#define") do
    it("Will return the definition") do
     expect(@definition.define()).to(eq("Lorem Ipsum"))
    end
  end

  describe(".all") do
    it("Will return the definition array") do
      expect(Definition.all()).to(eq([@definition]))
    end
  end

  describe("#save") do
    it("Will save a definition to the array") do
      expect(Definition.all()).to(eq([@definition]))
    end
  end

  describe(".clear") do
    it("Will clear the global definition array") do
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("Will show the id for the specified definition") do
      expect(@definition.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("Will return a definition based on the id specified") do
      expect(Definition.find(@definition.id())).to(eq(@definition))
    end
  end
end

require('rspec')
require('definition')

describe(Definition) do
  before() do
    @definition = Definition.new(:definition => "Lorem Ipsum")
  end
  describe("#define") do
    it("Will return the definition") do
     expect(@definition.define()).to(eq("Lorem Ipsum"))
    end
  end

  describe(".all") do
    it("Will return the definition array") do
      expect(Definition.all()).to(eq([]))
    end
  end
end

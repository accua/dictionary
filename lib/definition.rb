class Definition
@@definitions = []

  attr_reader(:definition)

  def initialize(attributes)
    @definition = attributes.fetch(:definition)
    @id = @@definitions.length() + 1
  end

  def define
    @definition
  end

  def self.all
    @@definitions
  end

  def save
    @@definitions.push(self)
  end

  def self.clear
    @@definitions = []
  end

  def id
    @id
  end

  def self.find(id)
    found_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end
end

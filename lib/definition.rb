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
end

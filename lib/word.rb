class Word
  @@words = []

  attr_reader(:word)

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @id = @@words.length() + 1
    @definitions = []
  end

  def definitions
    @definitions
  end

  def self.all
    @@words
  end

  def save
    @@words.push(self)
  end

  def id
    @id
  end

  def self.clear
    @@words = []
  end

  def self.find(id)
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

  def add_definition(definition)
    @definitions.push(definition)
  end
end

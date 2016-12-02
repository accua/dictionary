class Word
  @@words = []
  attr_reader(:word, :definition)

  def initialize(attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
    @id = @@words.length() + 1
    @words = []
  end

  def self.all
    @@words
  end

  # def id
  #   @id
  # end
end

class WordSplitter
  attr_accessor :string

  include Enumerable

  # Creates a new instance of WordSplitter
  def initialize(string)
    self.string = string
  end

  def each(&block)
    string.split(' ').each(&block)
  end
end

class Word < String
  attr_accessor :followed_by
  @@words = {}
  def initialize(this_word)
  end

  def nextword
    followed_by.sample
  end

  def self.all
    puts @@words
  end
end

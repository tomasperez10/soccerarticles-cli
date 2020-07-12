class BestPlayers

  attr_accessor :name

  @@all = []

  def initialize(name=nil)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def country(string)
    puts string
  end

end

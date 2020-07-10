class SoccerArticles::League
  
  attr_accessor :name, :country, :division
  
  @@all = []
  
  def initialize(name=nil, country=nil, division=nil)
    @name = name
    @country = country
    @division = division
    @@all << self
  end
  
  def self.all
    @@all
  end
end
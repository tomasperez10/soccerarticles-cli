class BestPlayers

  attr_accessor :name

  @@all = []

  def initialize(name, description)
    @name = Scraper.new.scrape_names
    @description = []
    @@all << self
  end

  def description
    @description << Scraper.new.scrape_description
  end

  def self.all
    @@all
  end

end

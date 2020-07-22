class BestPlayers

  @@all = []

  def initialize(name=nil, description=nil)
    @name = []
    @description = []
    @@all << self
  end

  def name
    @name << Scraper.new.scrape_names
  end

  def description
    @description << Scraper.new.scrape_description
  end

  def self.all
    @@all
  end

end

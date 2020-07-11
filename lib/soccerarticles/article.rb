class SoccerArticles
  
  attr_accessor :name, :country, :url_spain, :url_england, :url_france, :url_italy, :url_germany
  
  @@all = []
  
  def initialize(name=nil, country=nil)
    @name = name
    @country = country
    @url_spain = SoccerArticles::ScraperSpain.new
    @url_england = SoccerArticles::ScraperEngland.new
    @url_france = SoccerArticles::ScraperFrance.new
    @url_italy = SoccerArticles::ScraperItaly.new
    @url_germany = SoccerArticles::ScraperGermany.new
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def find_url_spain
    @find_url_spain ||= Nokogiri::HTML(open(self.url_spain))
  end
  
  def find_url_england
    @find_url_england ||= Nokogiri::HTML(open(self.url_england))
  end
  
  def find_url_france
    @find_url_france ||= Nokogiri::HTML(open(self.url_france))
  end
  
  def find_url_italy
    @find_url_italy ||= Nokogiri::HTML(open(self.url_italy))
  end
  
  def find_url_germany
    @find_url_germany ||= Nokogiri::HTML(open(self.url_germany))
  end
    
  
end
class SoccerArticles::Article
  
  attr_accessor :name, :league, :url, :website_url
  
  @@all = []
  
  def self.new_from_index_page(article)
    self.new(
      article.css("h2").text,
      "https://www.soccerarticles.com#{article.attribute("href").text}",
      article.css("p")[1].text,
      article.css(".position").text
      )
  end
  
  def initialize(name=nil, url=nil, league=nil)
    @name = name
    @url = url
    @league = league
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def website_url
    @website_url ||= doc.css("a.website").attr("href").value
  end
  
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
  
end
class SoccerArticles::Scraper
  
  def get_page
    Nokogiri::HTML(open(https://www.soccerarticles.com))
  end
  
  def scrape_articles_index
    self.get_page.css("div[data-list = 'Spain First Division: La Liga Santander', 'England First Dvision: Premier League', 'France First Division: Ligue 1 Conforama', 'Italy First Division: Serie A TIM', 'Germany First Division: Bundesliga'] a.item")
  end
  
  def make_articles
    scrape_articles_index.each do |article|
      SoccerArticles::Article.new_from_index_page(article)
  end
end
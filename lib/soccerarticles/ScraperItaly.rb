class SoccerArticles::ScraperItaly
  
  def get_page
    Nokogiri::HTML(open(http://www.legaseriea.it/en/))
  end
  
  def make_articles
    scrape_articles_index.each do |article|
      SoccerArticles::Article.new_from_index_page(article)
  end
end
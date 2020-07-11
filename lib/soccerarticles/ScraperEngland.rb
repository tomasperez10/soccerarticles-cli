class SoccerArticles::ScraperEngland
  
  def get_page
    Nokogiri::HTML(open(https://www.premierleague.com/))
  end
  
  def make_articles
    scrape_articles_index.each do |article|
      SoccerArticles::Article.new_from_index_page(article)
  end
end
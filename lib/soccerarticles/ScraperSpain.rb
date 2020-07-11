class SoccerArticles::ScraperSpain
  
  def get_page
    Nokogiri::HTML(open(https://www.marca.com/en/))
  end
  
  def make_articles
    scrape_articles_index.each do |article|
      SoccerArticles::Article.new_from_index_page(article)
  end
end
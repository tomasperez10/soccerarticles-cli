class SoccerArticles::ScraperFrance
  
  def get_page
    Nokogiri::HTML(open(https://www.ligue1.com))
  end
end
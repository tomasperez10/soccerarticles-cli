class ScraperEngland
  
  def get_page
    Nokogiri::HTML(open("https://www.premierleague.com/"))
  end
end
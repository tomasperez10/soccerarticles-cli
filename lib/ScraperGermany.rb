class ScraperGermany
  
  def get_page
    Nokogiri::HTML(open("https://www.bundesliga.com/en/bundesliga"))
  end
end
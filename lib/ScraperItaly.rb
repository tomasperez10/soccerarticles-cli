class ScraperItaly
  
  def get_page
    Nokogiri::HTML(open("http://www.legaseriea.it/en/"))
  end
end
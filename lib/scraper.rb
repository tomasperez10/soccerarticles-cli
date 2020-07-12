require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraper

  def get_page
    Nokogiri::HTML(open("https://sportsshow.net/greatest-soccer-players/"))
  end

  def scrape_index
    output = []
    self.get_page.css("h3 > span[id]").each {|h3|

      output << h3.values

     }
     puts output.join.split("ez-toc-section") [0..10]
  end
end

require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraper

  def get_page
    Nokogiri::HTML(open("https://sportsshow.net/greatest-soccer-players/"))
  end

  def scrape_names
    #names = []
    descriptions = self.scrape_description

    self.get_page.css("h3 > span[id]").each.with_index(0) {|h3, index|
      description = descriptions[index]
      name = h3.values[1].gsub(/[0-9]|10_/,"")
      BestPlayers.new(name, description)

     }
     #names.join.split("ez-toc-section") [1..10]
     BestPlayers.all.pop
  end

  def scrape_description

    #description = []

    description = self.get_page.css("figure+p").map(&:text)

  end
end

require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraper

  def get_page
    Nokogiri::HTML(open("https://sportsshow.net/greatest-soccer-players/"))
  end

  def scrape_index
    self.get_page.css("h3 > span[id]").each {|h3|
      puts h3.values
    }
  end

  def make_players
    scrape_index.each do |h|
      BestPlayers.new_from_index(h)
    end
  end
end
#self.get_page.css("h3").each {|h3|

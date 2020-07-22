require 'nokogiri'
require 'open-uri'
require 'pry'
class Scraper

  def get_page
    Nokogiri::HTML(open("https://sportsshow.net/greatest-soccer-players/"))
  end

  def scrape_names
    names = []

    names << self.get_page.css("h3 > span[id]").each {|h3|

      names << h3.values

     }
     names.join.split("ez-toc-section") [1..10]
  end

  def scrape_description

    description = []

    description << self.get_page.css("figure+p").map(&:text)

    description

  end
end

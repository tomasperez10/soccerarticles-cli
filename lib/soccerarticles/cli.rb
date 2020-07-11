require "soccerarticles/cli/version"

class SoccerArticles::CLI
  
  attr_accessor :path_spain, :path_england, :path_france, :path_italy, :path_germany
  
  def initialize(path_spain, path_england, path_france, path_italy, path_germany)
    @path_spain = SoccerArticles::ScraperSpain.new.url_spain
    @path_england = SoccerArticles::ScraperEngland.new.url_england
    @path_france = SoccerArticles::ScraperFrance.new.url_france
    @path_italy = SoccerArticles::ScraperItaly.new.url_italy
    @path_germany = SoccerArticles::ScraperGermany.new.url_germany
  end
  
  def call
    input = gets.strip
    
    if input != exit
    
      puts "Welcome to the soccer article database, where you can freely find news about soccer from the most well-known source of different countries!"
    
      puts ""
    
      puts "To find a soccer news article for Spain's first division, La Liga Santander, enter 'Spain'."
    
      puts ""
    
      puts "To find a soccer news article for England's first division, Premier League, enter 'England'."
    
      puts ""
    
      puts "To find a soccer news article for France's first division, Ligue 1 Uber Eats, enter 'France'."
    
      puts ""
    
      puts "To find a soccer news article for Italy's first division, Serie A TIM, enter 'Italy'."
    
      puts ""
    
      puts "To find a soccer news article for Germany's first division, Bundesliga, enter 'Germany'."
      
      case input
        when "Spain"
          spain
        when "England"
          england
        when "France"
          france
        when "Italy"
          italy
        when "Germany"
          germany
      end
    end
  end
  
  def spain
    SoccerArticles::Article.find_url_spain
  end
  
  def england
    SoccerArticles::Article.find_url_england
  end
  
  def france
    SoccerArticles::Article.find_url_france
  end
  
  def italy
    SoccerArticles::Article.find_url_italy
  end
  
  def germany
    SoccerArticles::Article.find_url_germany
  end
  
  
end

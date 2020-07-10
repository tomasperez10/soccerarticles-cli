require "soccerarticles/cli/version"

class SoccerArticles::CLI
  
  def call
    SoccerArticles::Scraper.new.make_articles
    puts "Welcome to the soccer article database, where you can freely find news about soccer from reliable sources of different countries!"
    start
  end
  
  def start
    
    puts ""
    puts "What league/country would you like to read the soccer news on? At the moment, we have Spain's first division: La Liga Santander, England's first division: Premier League, France's first division: Ligue 1 Conforama, Italy's first division: Serie A TIM, and Germany's first division: Bundesliga."
    input = gets.strip
    
  end
  
end

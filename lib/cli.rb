
class CLI

  # attr_accessor :path_spain, :path_england, :path_france, :path_italy, :path_germany
  #
  # def initialize(path_spain, path_england, path_france, path_italy, path_germany)
  #   @path_spain = path_spain
  #   @path_england = path_england
  #   @path_france = path_france
  #   @path_italy = path_italy
  #   @path_germany = path_germany
  # end

  def call

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

      start

      # case input
      #   when "Spain"
      #     spain
      #   when "England"
      #     england
      #   when "France"
      #     france
      #   when "Italy"
      #     italy
      #   when "Germany"
      #     germany
      # end
  end

  def start
    input = gets.strip

    if input == "Spain"
      spain
    elsif input == "England"
      england
    elsif input == "France"
      france
    elsif input == "Italy"
      italy
    elsif input == "Germany"
      germany
    else
      "Invalid"
    end
  end

  def spain
    ScraperSpain.new.get_page
  end

  def england
    ScraperEngland.new.get_page
  end

  def france
    ScraperFrance.new.get_page
  end

  def italy
    ScraperItaly.new.get_page
  end

  def germany
    ScraperGermany.new.get_page
  end


end

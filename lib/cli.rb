
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

      puts "To find a soccer news article for Spain's first division, La Liga Santander, enter '1'."

      puts ""

      puts "To find a soccer news article for England's first division, Premier League, enter '2'."

      puts ""

      puts "To find a soccer news article for France's first division, Ligue 1 Uber Eats, enter '3'."

      puts ""

      puts "To find a soccer news article for Italy's first division, Serie A TIM, enter '4'."

      puts ""

      puts "To find a soccer news article for Germany's first division, Bundesliga, enter '5'."

      start
  end

  def start
    input = gets.strip.to_i

    if input == "1"
      spain
    elsif input == "2"
      england
    elsif input == "3"
      france
    elsif input == "4"
      italy
    elsif input == "5"
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

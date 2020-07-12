
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

      puts "Welcome to the top 10 soccer players of all time database!"

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


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

      puts "Welcome to the top 10 soccer players of all time!"

      start
  end

  def start
    puts ""
    puts "Would you like to find out who the top 10 soccer players are? Enter Y for 'yes' or N for 'no'."

    input = gets.strip.downcase

    if input == "y"
      Scraper.new.scrape_index
    elsif input == "n"
      exit
    else
      "Invalid"
    end
  end


end

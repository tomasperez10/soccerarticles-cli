
class CLI

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

      after_input
    elsif input == "n"
      exit
    else
      puts "Invalid"
    end
  end

  def after_input
    puts ""
    puts "Type in a player's name to find out what country they played/play for in international competitions!"

    puts ""
    puts "Remember: do not copy the exact format that was listed for the command to work! (Ex: Type in 'Eusebio' instead of '10_Eusebio')"

    input = gets.strip.to_s

    if input == "Eusebio"
      BestPlayers.new.country("Portugal")
    elsif input == "Gerd Muller"
      BestPlayers.new.country("Germany")
    elsif input == "Franz Beckenbauer"
      BestPlayers.new.country("Germany")
    elsif input == "Alfredo Di Stefano"
      BestPlayers.new.country("Argentina and Spain")
    elsif input == "Johan Cruyff"
      BestPlayers.new.country("Netherlands")
    elsif input == "Cristiano Ronaldo"
      BestPlayers.new.country("Portugal")
    elsif input == "Zinedine Zidane"
      BestPlayers.new.country("France")
    elsif input == "Diego Maradona"
      BestPlayers.new.country("Argentina")
    elsif input == "Lionel Messi"
      BestPlayers.new.country("Argentina")
    elsif input == "Pele"
      BestPlayers.new.country("Brazil")
    else
      puts "Invalid"
    end
  end


end

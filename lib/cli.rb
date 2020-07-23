
class CLI

  def call

      puts "Welcome to the top 10 soccer players of all time!"

      start
  end

  def start
    Scraper.new.scrape_names
    puts ""
    puts "Would you like to find out who the top 10 soccer players are? Enter Y for 'yes' or N for 'no'."

    input = gets.strip.downcase

    if input == "y"
      BestPlayers.all.each.with_index(1) {
        |player, index| puts "#{index}. #{player.name}"
      }

      after_input
    elsif input == "n"
      exit
    else
      puts "Invalid"
    end
  end

  def after_input
    puts ""
    puts "Type in a player's name to learn more about their career!"

    puts ""
    puts "Remember: do not copy the exact format that was listed for the command to work! (Ex: Type in 'Eusebio' instead of '10_Eusebio')"

    input = gets.strip.to_s

    if input == "Eusebio"
      puts BestPlayers.new.description.join("")[0..244]
    elsif input == "Gerd Muller"
      puts BestPlayers.new.description.join("")[245..613]
    elsif input == "Franz Beckenbauer"
      puts BestPlayers.new.description.join("")[614..908]
    elsif input == "Alfredo Di Stefano"
      puts BestPlayers.new.description.join("")[909..1161]
    elsif input == "Johan Cruyff"
      puts BestPlayers.new.description.join("")[1162..1513]
    elsif input == "Cristiano Ronaldo"
      puts BestPlayers.new.description.join("")[1514..1909]
    elsif input == "Zinedine Zidane"
      puts BestPlayers.new.description.join("")[1910..2314]
    elsif input == "Diego Maradona"
      puts BestPlayers.new.description.join("")[2315..2606]
    elsif input == "Lionel Messi"
      puts BestPlayers.new.description.join("")[2607..2999]
    elsif input == "Pele"
      puts BestPlayers.new.description.join("")[3000..3300]
    else
      puts "Invalid"
    end
  end


end

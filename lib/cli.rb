
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
      puts BestPlayers.new.name

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
      puts BestPlayers.new.description[0]
    elsif input == "Gerd Muller"
      puts BestPlayers.new.description[1]
    elsif input == "Franz Beckenbauer"
      puts BestPlayers.new.description[2]
    elsif input == "Alfredo Di Stefano"
      puts BestPlayers.new.description[3]
    elsif input == "Johan Cruyff"
      puts BestPlayers.new.description[4]
    elsif input == "Cristiano Ronaldo"
      puts BestPlayers.new.description[5]
    elsif input == "Zinedine Zidane"
      puts BestPlayers.new.description[6]
    elsif input == "Diego Maradona"
      puts BestPlayers.new.description[7]
    elsif input == "Lionel Messi"
      puts BestPlayers.new.description[8]
    elsif input == "Pele"
      puts BestPlayers.new.description[9]
    else
      puts "Invalid"
    end
  end


end

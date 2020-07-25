
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
        |player, index|
        puts "#{index}. #{player.name}"
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
    puts "Type in a number from 1-10 to choose a player's ranking and learn more about their career!"

    puts ""
    puts "Remember: do not copy the exact format that was listed for the command to work! (Ex: Type in '1' instead of '1.')"

    input = gets.strip.to_i

    BestPlayers.all[input.to_i]
    if input > 0 && input <= BestPlayers.all.length
      puts BestPlayers.all[input - 1].name
      puts BestPlayers.all[input - 1].description
    else
      puts "Invalid"
    end

    # BestPlayers.all.each.with_index(1){
    #   |player, index|
    #   if input == index.to_s
    #     puts "#{player.name}"
    #     puts "#{player.description}"
    #   end
    # }


    # if input == "1"
    #   puts BestPlayers.all[0].name
    #   puts BestPlayers.all[0].description
    # elsif input == "2"
    #   puts BestPlayers.all[1].name
    #   puts BestPlayers.all[1].description
    # elsif input == "3"
    #   puts BestPlayers.all[2].name
    #   puts BestPlayers.all[2].description
    # elsif input == "4"
    #   puts BestPlayers.all[3].name
    #   puts BestPlayers.all[3].description
    # elsif input == "5"
    #   puts BestPlayers.all[4].name
    #   puts BestPlayers.all[4].description
    # elsif input == "6"
    #   puts BestPlayers.all[5].name
    #   puts BestPlayers.all[5].description
    # elsif input == "7"
    #   puts BestPlayers.all[6].name
    #   puts BestPlayers.all[6].description
    # elsif input == "8"
    #   puts BestPlayers.all[7].name
    #   puts BestPlayers.all[7].description
    # elsif input == "9"
    #   puts BestPlayers.all[8].name
    #   puts BestPlayers.all[8].description
    # elsif input == "10"
    #   puts BestPlayers.all[9].name
    #   puts BestPlayers.all[9].description
    # else
    #   puts "Invalid"
    # end
  end


end

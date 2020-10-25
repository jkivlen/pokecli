class CLI

    def start
        puts "Welcome"
        API.catch_pokemon_ditto
        menu
    end

    def menu
        puts "Would you like to see Ditto's game indeces?"
        puts "Type 'yes' to continue or any other key to exit"    

        user_input = gets.strip.downcase

        if user_input == "yes"
            puts "Good choice!"

            display_ditto_game_indices
            ask_user_for_game_choice

            sleep(2)

            menu

        else
            puts "Goodbye"
        end
    end


    def display_ditto_game_indices
        Ditto.all.each.with_index(1) do |ditto, index|
            puts "#{index}. #{ditto.game_name}"
        end

    end

    def ask_user_for_game_choice
        puts "Which game number would you like to know more about?"
        user_input = gets.strip.to_i - 1

        until user_input.between?(0, Ditto.all.length - 1)
            puts "Sorry invalid input.  Choose a valid number"
            user_input = gets.strip.to_i - 1
        end

        ditto_instance = Ditto.all[user_input]    
        display_game_details(ditto_instance)
    end

    def display_game_details(ditto_instance)
        sleep(1)
            
        puts ditto_instance.game_name.capitalize
        puts "Game Index: #{ditto_instance.game_index}"
        puts "Game URL: #{ditto_instance.game_url}"

    end




end

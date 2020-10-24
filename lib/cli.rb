class CLI

    def start
        puts "Welcome"
        API.catch_pokemon_ditto
        menu
    end

    def menu
        #give user the option to see ditto attributes
        puts "Would you like to see the abilities or game indeces of Ditto?"
        puts "Type 'abilities' for abilities, 'indeces' for indeces any other key to exit"

        user_input = gets.strip.downcase
        #if the user says yes    
        if user_input == "abilities"
            puts "Good Choice!"
            #display the list    
            display_ditto_abilities
            ask_user_for_ability_choice

            sleep(2)
            menu
        elsif user_input == "indeces"
            puts "Awesome Choice!"

            display_ditto_game_indices
            ask_user_for_game_choice
            
            #recursion
            menu 
        else
            puts "Goodbye"
        end
    end

    def display_ditto_abilities
        # access all the abilities
        #print each out out
        
        Ditto.all.each.with_index(1) do |ditto, index|
            puts "#{index}. #{ditto.ability_name}"
        end
    end


    def ask_user_for_ability_choice
        #ask user for choice
        puts "Enter the ability number you'd like to know more about"
        user_input = gets.strip.to_i - 1

        #index valid? number between 0 and 1

        until user_input.between?(0, Ditto.all.length - 1)
            #keep asking for user input
            puts "Sorry invalid input.  Choose a valid number"
            user_input = gets.strip.to_i - 1

        end


        ditto_instance = Ditto.all[user_input]
       
        display_ability_details(ditto_instance)
    end


    def display_ability_details(ditto)
        sleep(1)

        puts ditto.ability_name
        puts "Ability Hidden: #{ditto.ability_is_hidden}"
        puts "URL: #{ditto.ability_url}"
        puts "Slot: #{ditto.ability_slot}"

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
            user_input = gets.strip.to_i -1
        end

        ditto_instance = Ditto.all[user_input]    
        display_game_details(ditto_instance)
    end

    def display_game_details(ditto)
        sleep(1)
            
        puts ditto.game_name.capitalize
        puts "Game Index: #{ditto.game_index}"
        puts "Game URL: #{ditto.game_url}"

    end




end

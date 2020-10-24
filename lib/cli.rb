class CLI

    def start
        puts "Welcome"
        API.catch_pokemon_ditto
        self.menu
    end

    def menu
        #give user the option to see ditto attributes
        puts "Would you like to see the abilities of Ditto?"
        puts "Type 'yes' to continue or any other key to exit"

        user_input = gets.strip.downcase
        #if the user says yes    
        if user_input == "yes"
            puts "Good Choice!"
            #display the list    
            display_ditto_abilities
            ask_user_for_ability_choice

            sleep(2)
            puts "/n"

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
        index = gets.strip.to_i - 1

        #index valid? number between 0 and 1

        until index.between?(0, Ditto.all.length - 1)
            #keep asking for user input
            puts "Sorry invalid input.  Choose a valid number"
            index = gets.strip.to_i - 1

        end


        ditto_instance = Ditto.all[index]
       
        display_ability_details(ditto_instance)
    end


    def display_ability_details(ditto)
        sleep(1)
        puts "\n"
        puts ditto.ability_name
        puts "Ability Hidden: #{ditto.ability_is_hidden}"
        puts "URL: #{ditto.ability_url}"
        puts "Slot: #{ditto.ability_slot}"

    end



end

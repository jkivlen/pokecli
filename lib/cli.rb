class CLI

    def start
        puts "Welcome"
        API.fetch_pokemon_ditto
        self.menu
    end

    def menu
        puts "Would you like to see the attributes of Ditto?"
        puts "Type 'yes' to continue or any other key to exit"

        user_input = gets.strip.downcase
        #if the user says yes    
        if user_input == "yes"
            puts "Good choice!"
            #display the list    
            self.display_ditto_attributes


        end
    end

    def display_ditto_attributes
        
        binding.pry
        Ditto.all.each do |

    end




end

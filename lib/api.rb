class API

    def self.catch_pokemon_ditto
        
        url = "https://pokeapi.co/api/v2/pokemon/ditto"
        
        response = HTTParty.get(url)
        parsed = response.parsed_response
        

        abilities_list = parsed["abilities"]
        game_indices_list = parsed["game_indices"]
        stats_list = parsed["stats"]
    

        abilities_list.each do |ditto_hash|
          ditto1 = Ditto.new
          ditto1.ability_name = ditto_hash["ability"]["name"]
          ditto1.ability_url = ditto_hash["ability"]["url"]
          ditto1.ability_is_hidden = ditto_hash["is_hidden"]
          ditto1.ability_slot = ditto_hash["slot"]
        end    
        Ditto.all
    end

           

end

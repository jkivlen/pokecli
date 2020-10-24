class API

    def self.catch_pokemon_ditto
        
        url = "https://pokeapi.co/api/v2/pokemon/ditto"
        
        response = HTTParty.get(url)
        parsed = response.parsed_response
        
        game_indices_list = parsed["game_indices"]
        
        game_indices_list.each do |ditto_hash|
          ditto1 = Ditto.new            
          ditto1.game_index = ditto_hash["game_index"]
          ditto1.game_name = ditto_hash["version"]["name"]
          ditto1.game_url = ditto_hash["version"]["url"]
      end
        




    end

           

end

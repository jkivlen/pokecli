class API

    def self.fetch_pokemon_ditto
        
        url = "https://pokeapi.co/api/v2/pokemon/ditto"
        
        response = HTTParty.get(url)
        parsed = response.parsed_response
        

        abilities_list = parsed["abilities"]
        game_indices_list = parsed["game_indices"]
        stats_list = parsed["stats"]
    

        abilities_list.each do |abilities_hash|
          abilities = Ditto.new
          abilities.name = abilities_hash["ability"]["name"]
          abilities.url = abilities_hash["ability"]["url"]
          abilities.is_hidden = abilities_hash["is_hidden"]
          abilities.slot = abilities_hash["slot"]
        end
        binding.pry    
        Ditto.all
    end

           

end

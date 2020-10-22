class API

    def self.fetch_pokemon
        url = "https://pokeapi.co/api/v2/pokemon/ditto"
        response = HTTParty.get(url)
        parsed = response.parsed_response
        abilities = parsed["abilities"]
        game_indices = parsed["game_indices"]
        stats = parsed["stats"]
    end

       array_of_abilities.each do |abilities_hash|
        pokemon = Pokemon.new
        pokemon.name = abilities_hash["name"]
        pokemon.is_hidden = abilities_hash["is_hidden"]
        pokemon.slot = abilities_hash["slot"]

       end
           

end

class Ditto
    attr_accessor :ability_name, :ability_url, :ability_is_hidden, :ability_slot, :game_index, :game_name, :game_url

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end




end



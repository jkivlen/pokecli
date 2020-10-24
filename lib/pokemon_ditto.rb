class Ditto
    attr_accessor :game_index, :game_name, :game_url

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end




end



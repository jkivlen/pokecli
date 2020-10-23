class Ditto
    attr_accessor :abilities, :game_indices, :held_items, :moves, :versions, :stats, :name, :url, :is_hidden, :slot

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end




end



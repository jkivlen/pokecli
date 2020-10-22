class Pokemon_Ditto
    attr_accessor :abilities, :game_indices, :held_items, :moves, :versions, :stats

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end




end

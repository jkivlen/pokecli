class Ditto
    attr_accessor :ability_name, :ability_url, :ability_is_hidden, :ability_slot

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end




end



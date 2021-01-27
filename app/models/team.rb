
class Team
    attr_accessor :name, :motto

    @@all = []

    def initialize(name, motto)
        self.name = name
        self.motto = motto

        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
end



class SuperHero
    attr_accessor :name, :power, :bio

    @@all = []

    def initialize(stats)
        stats.each do |key, value|
            self.send(("#{key}="), value)
        end
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
end


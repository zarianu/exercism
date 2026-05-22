module Space
  class Age
    def initialize(@age : Float64)
    end

    def self.from_seconds(s)
      Age.new(s / 31_557_600)
    end

    def age_on_earth
      @age
    end

    def age_on_mercury
      @age / 0.2408467
    end

    def age_on_venus
      @age / 0.61519726
    end
    def age_on_mars
      @age / 1.8808158
    end
    def age_on_jupiter
      @age / 11.862615
    end
    def age_on_saturn
      @age / 29.447498
    end
    def age_on_uranus
      @age / 84.016846
    end
    def age_on_neptune
      @age / 164.79132
    end
  end
end

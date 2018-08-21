class SolarSystem

  def initialize(star_name)
    @star_name = star_name
  end

  attr_reader :star_name :planets

  # def planets
  #   return @planets = []
  # end
  @planets = []

  def add_planet(planet)
    @planets << planet
  end

  def list_planets

    list = @planets.map.with_index do |planet, index|
      "#{index + 1}. #{planet}"
    end
    return list
  end

end

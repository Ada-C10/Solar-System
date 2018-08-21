class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    return @planets << planet
  end

  def list_planets
    list = []
    @planets.each_with_index do |planet, index|
      list << "#{index + 1}: #{planet.name}"
    end
    return list

  end


end

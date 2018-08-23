class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planets_list = []
    @planets.each_with_index do |planet, i|
      planets_list  << "#{i+1}: #{planet.name}"
    end
    return planets_list
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      return planet if planet.name.downcase == planet_name.downcase
    end
    raise_error
  end

  def raise_error
    raise ArgumentError, 'No Planet found by that name'
  end

  def distance_between(first_planet, second_planet)
    first_planet = find_planet_by_name(first_planet)
    second_planet = find_planet_by_name(second_planet)

    difference = (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).abs
    
    return difference
  end
end

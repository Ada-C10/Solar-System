
#wave 2

class SolarSystem # responsible for keeping track of a collection of instances of Planet
  attr_reader :star_name, :planets

  def initialize(star_name) # Constructor! This will be called automatically when you invoke SolarSystem.new
    @planets = []
    @star_name = star_name
  end

  def add_planet(planet)
    @planets << planet #add it to the list of planets.
  end

  def list_planets
    planet_listing = []
    @planets.each_with_index do |planet, index|
      planet_listing << "#{index + 1}:  #{planet.name}"
    end
    return planet_listing.join( "\n" ) #list of all the planets as a string
  end

  def find_planet_my_name(planet)
    planet_name = planet.upcase
    @planets.each do |planet| #@planet already converted to string
      if planet_name == planet.name.upcase
        return planet
      end
    end
  end

  def distance_between(planet_1,planet_2)
    planet_1 = find_planet_my_name(planet_1).distance_from_sun_km
    planet_2 = find_planet_my_name(planet_2).distance_from_sun_km
    (planet_2 - planet_1).abs

  end

end

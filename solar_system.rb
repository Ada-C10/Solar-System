
#wave 2

#The constructor should take one parameter, star_name, and save it in an instance variable.
#Each SolarSystem should have an instance variable called @planets, which will store an array of planets. When the SolarSystem is created, @planets should be set to an empty array.
#Both @star_name and @planets should be readable but not writable.

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name) # Constructor! This will be called automatically when you invoke SolarSystem.new
    @planets = []
    @star_name = star_name
  end
  def add_planet(planet)
    @planets << planet
  end




  def list_planets
    planet_listing = []
    @planets.each_with_index do |planet, index|
      planet_listing << "#{index = index + 1}:  #{planet.name}"
    end
    return planet_listing.join( "\n" )
  end
end

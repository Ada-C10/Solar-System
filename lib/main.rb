# main.rb
require_relative 'planet'
require_relative 'solar_system'

#This method should create two different instances of Planet and print out some of their attributes.
# create an instance of SolarSystem, add all your Planets to it, and then print the list
def main
  # solar_system = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "yellowish-white", 4.86732e24, 1.082e8, "The hottest planet and only planet in the Solar System to be named after a female figure.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support an atmosphere with free oxygen, oceans of liquid water on the surface, and life.")
  # solar_system.add_planet(earth)
  # solar_system.add_planet(venus)

  puts venus.summary
  puts earth.summary

end

main

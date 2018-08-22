
require_relative 'planet'
require_relative 'solar_system'

#read the instructions shelan!!!!!!
#WORD FOR WORD!

def main
 solar_system = SolarSystem.new('Sol')

 mercury = Planet.new('mercury', 'dark-grey', 3.285e23, 5.791e7, 'is the closest planet to the sun')
 venus = Planet.new('Venus', 'reddish-brown', 4.867e34, 1.082e8, 'a day on Venus is longer than one year')

 solar_system.add_planet(mercury)
 solar_system.add_planet(venus)

# puts mercury.summary
 # # earth = Planet.new('Earth', ...)
 # # solar_system.add_planet(earth)
 #
 list = solar_system.list_planets
 puts list


end

main


# puts main(x)
#
# solar_system = SolarSystem.new('Sol') #why?
#
# earth = Planet.new('Earth', ...)
# solar_system.add_planet(earth)
#
# list = solar_system.list_planets
# puts list
# => Planets orbiting Sol
# => 1.  Earth
# puts mercury.summary

#create new i.v?
  # def location=(new_location)
  #   @location = new_location
  #   return "#{@name} is the #{@location} place from the sun"
  # end
  # def astrology=(new_astrology)
  #   @astrology = new_astrology
  #   return "In astrology, the ruling planet for {@astrology} is #{@name}"
  # end

# mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'is the closest planet to the sun')
# venus = Planet.new('Venus', 'reddish-brown', 4.867e34, 1.082e8, 'a day on Venus is longer than one year')
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'its the only planet known to support life')
# mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'its named after the Roman god of war')
# jupiter = Planet.new('Jupiter', 'white, orange, brown and red', 1.898e27, 7.785e8, 'is the largest planet in the solar system')
# saturn = Planet.new('Saturn', 'yellowish-brown', 5.683e26, 1.433e9, 'has 62 confirmed moons.')
# uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'orbits the Sun lying on its side.')
# neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.495e9, 'is the farthest planet from the Sun.')

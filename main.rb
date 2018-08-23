# main.rb
require_relative 'planet'
require_relative 'solar_system'

#Contain one method called main that will exercise your code
def main
  #This method should create two different instances of Planet
  solar_system = SolarSystem.new('Sol')

  jupiter = Planet.new('Jupiter','orange', '5.972*10**24 kg' , '770 million km', 'is called after the ancient Roman sky-god')
  solar_system.add_planet(jupiter)
  mars = Planet.new('Mars','red','6.39*10**23 kg', '227.9 million km',  'has ice caps in its North and South pole' )
  solar_system.add_planet(mars)
  # Here I have added information for Wave #2 of the project
  venus = Planet.new('Venus', 'red', '9', '6', 'has 10,000 bodies of water')
  solar_system.add_planet(venus)
  mercury = Planet.new('Mercury','mauve','0','9','is an awesome planets')
  solar_system.add_planet(mercury)
  earth = Planet.new('Earth','yellow','3','10','has another planet in it')
  solar_system.add_planet(earth)
  #This method should print out some of the planets' attributes

#####
  # puts jupiter.mass_kg
  puts
######
  # mars = Planet.new(:color, :distance_from_sun_km)

#Exercise your summary method in this method.
#We use 'puts' because we are calling an existing method from a separate and 'relative' file
######
  # puts mars.summary
  # puts jupiter.summary
#######

# solar_system = SolarSystem.new('Sol')
puts
list = solar_system.list_planets
puts list
found_planet = solar_system.find_planet_by_name('Earth')
puts found_planet
puts found_planet.summary
end

p main

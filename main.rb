require_relative 'planet'
require_relative 'solar_system'

def main
  # Creates solar_system array to collect data on our planets
  solar_system = SolarSystem.new('Sol')

  # creates two instances of planet, adds them to planet array, and prints a summary of informaton for each.
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 5.791e7, 'Mercury is the closest planet to the sun')
  solar_system.add_planet(mercury)
  puts
  puts mercury.summary
  puts

  venus = Planet.new('Venus', 'pearl colored', 4.8675e24, 1.082e8, 'Venus is named after the Roman goddess of love and beauty. It is the second-brightest natural object in the night sky after the Moon')
  solar_system.add_planet(venus)
  puts
  puts venus.summary
  puts

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet known to support life')
  solar_system.add_planet(earth)
  puts
  puts earth.summary

  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"')
  solar_system.add_planet(mars)
  puts
  puts mars.summary
  puts

  jupiter = Planet.new('Jupiter', 'red', 1.8982e27, 7.7857e8, 'Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"Jupiter has been known to astronomers since antiquity.[14] The Romans named it after their god Jupiter')
  solar_system.add_planet(jupiter)
  puts
  puts jupiter.summary
  puts

  list = solar_system.list_planets
  puts list

end

main

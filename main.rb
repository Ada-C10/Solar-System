require_relative 'planet'
require_relative 'solar_system'

def main
  print "What is the star name of your solar system? "
  star_name = gets.chomp
  solar_system = SolarSystem.new(star_name)

  mercury = Planet.new('Mercury', 'dark-gray', 0.33e24, 57.9e6,
  'Smallest of planets in our solar system')
  solar_system.add_planet(mercury)
  venus = Planet.new('Venus', 'red-brown', 4.87e24, 108.2e6,
  'Named after goddess of love and beauty')
  solar_system.add_planet(venus)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8,
  'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new('Mars', 'red', 0.642e24, 227.9e6,
  'Has the largest  mountain in our solar system')
  solar_system.add_planet(mars)

  input = nil

  while input != '4'
    puts "What would you like to do? (Select the corresponding number)"
    puts "1. List planets"
    puts "2. Add planet"
    puts "3. Planet details"
    puts "4. Exit"
    print "Selection: "
    input = gets.chomp

    if input == '1'
      list = solar_system.list_planets
      puts list
    elsif input == '2'
      print "Name of planet: "
      name = gets.chomp.capitalize
      print "Color: "
      color = gets.chomp
      print "Planet mass in kg: "
      mass = gets.chomp.to_f
      print "Planet's distance from the sun in km: "
      distance = gets.chomp.to_f
      print "Planet fun fact: "
      fun_fact = gets.chomp

      planet = Planet.new(name, color, mass, distance,fun_fact)
      solar_system.add_planet(planet)
    end
  end
  puts "Goodbye!"


  # found_planet = solar_system.find_planet_by_name('EArth')
  #
  # # found_planet is an instance of class Planet
  # puts found_planet
  # # => #<Planet:0x00007fe7c2868ee8>
  #
  # puts found_planet.summary
  # # => Earth is a blue-green planet ...
  #
  # puts solar_system.distance_between('earth', 'saturn')

end

main

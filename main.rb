require_relative 'planet'
require_relative 'solar_system'

def planet_info
  planet_info = []
  print "Name of planet: "
  planet_info << gets.chomp.capitalize
  print "Color: "
  planet_info << gets.chomp
  print "Planet mass in kg: "
  planet_info << gets.chomp.to_f
  print "Planet's distance from the sun in km: "
  planet_info << gets.chomp.to_f
  print "Planet fun fact: "
  planet_info << gets.chomp

  return info
end

def main
  solar_system = SolarSystem.new('Sol')

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
    puts "2. Planet details"
    puts "3. Add planet"
    puts "4. Exit"
    print "Selection: "
    input = gets.chomp

    if input == '1'
      list = solar_system.list_planets
      puts list
    elsif input == '2'
      print "Which planet would you like to learn about? "
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif input == '3'
      puts planet_info
      #new_planet = Planet.new(info, color, mass, distance, fun_fact)
      #solar_system.add_planet(new_planet)
    end
  end
  puts "Goodbye!"
  #
  # puts solar_system.distance_between('earth', 'saturn')

end



main

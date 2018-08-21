require_relative 'planet'
require_relative 'solar_system'

def planet_details(solar_system)

  puts "What is the name of the planet?"
  print ">> "

  planet_name = gets.chomp
  planet = nil

  until planet
    begin
      planet = solar_system.find_planet_by_name(planet_name)
    rescue ArgumentError
      puts "No planet found with that name! Try again."
      print ">> "
      planet_name = gets.chomp
    end
  end

  return planet
end

def menu

  puts "What would you like to do next?"
  puts "1. List planets"
  puts "2. Planet Details"
  puts "3. Add Planet"
  puts "4. Calculate distance between two planets"
  puts "5. Exit"

  print ">> "

end

def input_from_menu

  menu
  input = gets.chomp.to_i

  until [*1..2].include?(input)
    puts "Sorry, incorrect input."
    menu
    input = gets.chomp.to_i
  end

  return input

end

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'May have previously held water')
  uranus = Planet.new('Uranus', 'light-blue', 8.6810e25, 2.871e8, 'First planet discovered by telescope')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(uranus)

  while true
    option = input_from_menu

    case option
    when 1
      puts solar_system.list_planets
    when 2
      planet = planet_details(solar_system)
      puts planet.summary
    when 5
      puts "You are exiting Solar System."
      break


    end
  end


end

main

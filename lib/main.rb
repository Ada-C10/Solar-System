require_relative 'planet'
require_relative 'solar_system'

def menu

  puts "What would you like to do next?"
  puts "\t 1. List planets"
  puts "\t 2. Exit"
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
      puts "You are exiting Solar System."
      break


    end
  end


end

main

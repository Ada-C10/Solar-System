require_relative 'planet'
require_relative 'solar_system'

def planet_details(solar_system)

  puts "What is the name of the planet?"
  print ">> "

  planet_name = gets.chomp.capitalize


  while true
    begin
      return solar_system.find_planet_by_name(planet_name)
    rescue ArgumentError
      puts "No planet found with that name! Try again."
      print ">> "
      planet_name = gets.chomp.capitalize
    end
  end
end

def add_planet_prompt

  puts "What is the name of the planet?"
  print ">> "
  planet_name = gets.chomp

  puts "What is the color of the planet?"
  print ">> "
  color = gets.chomp

  puts "What is the mass of the planet? (kg)"
  print ">> "
  mass = gets.chomp.to_f

  puts "What is the distance of the planet from the sun? (km)"
  print ">> "
  distance_from_sun = gets.chomp.to_f

  puts "What is one fun fact about this planet?"
  print ">> "
  fun_fact = gets.chomp

  return {
    :planet_name => planet_name,
    :color => color,
    :mass => mass,
    :distance => distance_from_sun,
    :fun_fact => fun_fact
  }

end


def add_planet(solar_system)


  while true
    begin
      planet_info = add_planet_prompt
      return Planet.new(planet_info[:planet_name], planet_info[:color], planet_info[:mass], planet_info[:distance], planet_info[:fun_fact])
    rescue ArgumentError
      puts "Sorry, your planet is invalid. Either there is already a duplicate in the solar system or it has invalid mass/distance. Please try again."
    end
  end
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

  until [*1..5].include?(input)
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

    when 3
      planet = add_planet(solar_system)

      while true
        begin
          solar_system.add_planet(planet)
          break
        rescue ArgumentError
          puts "Sorry, your planet is a duplicate. Please try again. "
          planet = add_planet(solar_system)
        end
      end

    when 4
      puts "Please list the names of the two planets you would like to calculate."
      planet1 = planet_details(solar_system)
      planet2 = planet_details(solar_system)

      puts "The distance is #{solar_system.distance_between(planet1.name, planet2.name)} km."
    when 5
      puts "You are exiting Solar System."
      break
    end
  end


end

main

require_relative 'planet'
require_relative 'solar_system'


#
# SolarSystem = [mars, venus, jupiter, moon, earth, pluto]

def main

  puts "Would you like to play the planet info game?"
  answer = gets.chomp

#instance of solarsystem
  solar_system = SolarSystem.new('Sol')

#instance of planet
  earth = Planet.new('earth', 'blue-green', '444', '10.54', 'humans live on it')
  mars = Planet.new('mars', 'red', '666', '1092.3', 'its red')
  venus = Planet.new('venus', 'sliver', '3030', '99922', 'its super far away')

  solar_system.add_planets(earth)
  solar_system.add_planets(mars)
  solar_system.add_planets(venus)

  while answer == "yes"

    puts "please select from the following two options at this point: 1)list planets or 2) exit."

    option = gets.chomp

    if option == "1" || option == "list planets"

      list = solar_system.list_planets
      puts list

      puts "Would you like to know more details about the planet, please enter yes or no?"
      planet_detail_ans = gets.chomp

      if planet_detail_ans == "yes"

        puts "please enter the name of the planet that you would like to learn about"

        planet_detail_planet = gets.chomp

        found_planet = solar_system.find_planet_by_name(planet_detail_planet)

        if  found_planet
          puts found_planet.summary
        else
          puts 'no match'
        end

      end

      puts "Would you like to add a planet to the current solar system, please enter yes or no only"

      solar_system_ans = gets.chomp

      if solar_system_ans == "yes"
        puts "please enter the following information about each planet in this particular order, name, color, mass_kg, distance_from_sun_km, and fun_fact"

        puts "enter name of planet"
        name = gets.chomp

        puts "enter color of planet"
        color = gets.chomp


        puts "enter mass(which is in Kg)"
        mass_kg = gets.chomp

        puts "enter distance from the sun (which is in km)"
        distance = gets.chomp

        puts "enter a fun fact about your planet"
        fun_fact = gets.chomp

        name = Planet.new(name, color, mass_kg, distance, fun_fact)

        solar_system.add_planets(name)
        list = solar_system.list_planets
        puts list

      end
    elsif  option == "2" || option == "exit"
      exit
    end
  end
end

main


















# WAVE 2
# def main
#
#   solar_system = SolarSystem.new('Sol')
#
#   earth = Planet.new('earth', 'blue-green', '444', '10.54', 'humans live on it')
#   mars = Planet.new('mars', 'red', '666', '1092.3', 'its red')
#
#   venus = Planet.new('venus', 'sliver', '3030', '99922', 'its super far away')
#
#   solar_system.add_planets(earth)
#   solar_system.add_planets(mars)
#   solar_system.add_planets(venus)
#
#   # puts earth.summary
#   # puts mars.summary
#   #
#   list = solar_system.list_planets
#   # puts list
#
#   found_planet = solar_system.find_planet_by_name('blue')
#   if  found_planet
#     puts found_planet.summary
#   else
#     puts 'no match'
#   end
#   puts solar_system.star_name
# end
#
# main

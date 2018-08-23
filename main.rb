require_relative 'planet'
require_relative 'solar_system'

def main
  #... Do stuff with planets ..
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  saturn = Planet.new('Saturn','rust',5.683e26,1.433e9,"Saturn has at least 53 moons, 9 moons awaiting confirmation")
  mars = Planet.new('Mars', 'red', 6.39e23, 227.9e6, 'The planet is named after Mars, the Roman god of war. ')

  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(mars)
  # puts earth.name
  # puts earth.color
  # puts saturn.name
  # puts saturn.color
  # puts earth.summary
  # puts saturn.summary
  print "What do you want to do next, 'list planets', 'planet details','add planet', 'exit'>> "
  option = gets.chomp.downcase
  until option == "exit"
    if option == "list planets"
      list = solar_system.list_planets
      puts list
      print "What do you want to do next, 'list planets', 'planet details','add planet','distance between' 'exit'>> "
      option = gets.chomp.downcase
    elsif option == "planet details"
      print "What planet do you wish to learn more about? >> "
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      until found_planet != nil
        list = solar_system.list_planets
        print "That planet is not in our solar system!\n"
        puts list
        print "\nPlease choose another >>"
        planet = gets.chomp
        found_planet = solar_system.find_planet_by_name(planet)
      end
      puts found_planet.summary
      print "What do you want to do next, 'list planets', 'planet details','add planet','distance between' 'exit'>> "
      option = gets.chomp.downcase
    elsif option == "add planet"
      print "What's the planet name? >> "
      new_name = gets.chomp
      print "What color is #{new_name}? >> "
      new_color = gets.chomp
      print "What is the mass of the #{new_name}? >>"
      new_mass_kg = gets.chomp.to_f
      until new_mass_kg > 0
        print "Please insert a mass greater than 0 >> "
        new_mass_kg = gets.chomp.to_f
      end
      print "How far away is #{new_name} from the sun? >> "
      new_distance_from_sun_km = gets.chomp.to_f
      until new_distance_from_sun_km > 0
        print "Please insert a distance greater than 0 >> "
        new_distance_from_sun_km = gets.chomp.to_f
      end
      print "Do you know a fun fact about #{new_name}? >> "
      new_fun_fact = gets.chomp
      new_planet = Planet.new(new_name,new_color,new_mass_kg,new_distance_from_sun_km,new_fun_fact)
      solar_system.add_planet(new_planet)
      print "What do you want to do next, 'list planets', 'planet details','add planet','distance between' 'exit'>> "
      option = gets.chomp.downcase
    elsif option == "distance between"
      print "What 2 planets do you want to know the distance between?\n\\Planet 1: >> "
      planet1 = gets.chomp!
      print "Planet 2: >> "
      planet2 = gets.chomp!
      distance = solar_system.distance_between(planet1,planet2)
      puts "The total distance between #{planet1} and #{planet2} is #{distance} km."
      print "What do you want to do next, 'list planets', 'planet details','add planet','distance between' 'exit'>> "
      option = gets.chomp.downcase
    else
      print "I'm sorry, please select a valid option:'list planets','planet details','add planet' 'exit'>> "
      option = gets.chomp.downcase
    end
  end
end

main

#earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#saturn = Planet.new('Saturn','rust',5.683e26,1.433e9,"Saturn has at least 53 moons, 9 moons awaiting confirmation")

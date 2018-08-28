require_relative 'planet'
require 'awesome_print'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  zeb = Planet.new('Zebulon', 'rainbow', 2.972e24, 19.496e8, 'Where the unicorns play')
  solar_system.add_planet(zeb)
  swil = Planet.new('Swilly', 'orange-tabby', 1.972e24, 30.496e8, 'Where Chelsey keeps her many space cats')
  solar_system.add_planet(swil)

  user_input = nil
  until user_input == "exit"
    puts "What would you like to do? (options: list planets, planet details, add planet, or exit )"
    user_input = gets.chomp
    case user_input
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      pick_planet(solar_system)
    when "add planet"
      add_planet(solar_system)
    else
      puts "That's not one of our options. Try again!"
      puts "~~~~~~~~~~~~~~~~~~~~~~~~"
    end
  end

  puts "________________________________________________________"
  puts "Other gunk:"
  found_planet = solar_system.find_planet_by_name('swilly')
  ap found_planet
  puts found_planet[0].name
  puts found_planet[0].summary
  puts "The distance between #{zeb.name} and #{swil.name}: #{solar_system.distance_between(zeb, swil)}"
end

def pick_planet(solar_system)
  puts "~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "What planet would you like to learn about?"
  user_input = gets.chomp
  planets = solar_system.find_planet_by_name(user_input)
  if planets == "That planet does not exist in our solar system yet."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~"
    puts planets
    puts "~~~~~~~~~~~~~~~~~~~~~~~~"
  else
    puts "~~~~~~~~~~~~~~~~~~~~~~~~"
    puts planets[0].summary
    puts "~~~~~~~~~~~~~~~~~~~~~~~~"
  end
end

def add_planet(solar_system)
  puts "~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "Please provide information about your new planet!"
  puts "1. What's it called?"
  name = gets.chomp
  puts "2. What color is it?"
  color = gets.chomp
  mass_kg = 0
  until mass_kg > 0
    puts "3. What does it weigh?"
    mass_kg = gets.chomp.to_i
    if !(mass_kg > 0)
      puts "You must enter a valid number greater than 0 for the planets weight."
    end
  end
  distance_from_sun_km = 0
  until distance_from_sun_km > 0
    puts "4. What is it's distance from the sun?"
    distance_from_sun_km = gets.chomp.to_i
    if !(mass_kg > 0)
      puts "You must enter a valid number greater than 0 for the planets distance from the sun."
    end
  end
  puts "5. Now please provide a fun fact:"
  fun_fact = gets.chomp
  user_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  solar_system.add_planet(user_planet)
end

main

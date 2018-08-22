require "pry"

require_relative "planet"
require_relative "solar_system"


def provide_solar_system_info()
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  venus = Planet.new('Venus', 'white', 99, 100, 'hot hot hot')
  mercury = Planet.new('Mercury', 'gray', 0.01, 0.02, 'fire and smoke')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)

  return solar_system
end

def display_menu(solar_system)
  # provide_solar_system_info()
  return "
  Welcome to the planetarium! \n
  What would you like to do?
  [1] View the planets that revolve around #{solar_system.star_name}!
  [2] View details about a specific planet?
  [3] Add a planet to the list!
  [4] Calculate the distance between two planets!
  [5] Exit!
  \nPlease enter the number of your selection: "
end

def list_planets(solar_system)
  return solar_system.list_planets
end

def show_planet_info(solar_system)
  choices = list_planets(solar_system)

  puts "Which planet would you like to learn more about? "
  user_planet = gets.chomp

  until solar_system.find_planet_by_name(user_planet)
    puts "We don't know that planet -- yet!"
    puts "Here are your choices: \n#{choices}"
    puts "Please type the full name of the planet you want to learn more about: "
    user_planet = gets.chomp
  end

  found_planet = solar_system.find_planet_by_name(user_planet)
  return found_planet.summary
end

def add_planet(solar_system)

  # TODO - handle multiple entries

  planet_hash =
  {
    "name" => nil,
    "color" => nil,
    "mass in kg" => nil,
    "distance from sun in km" => nil,
    "fun fact" => nil
  }

  puts "Please enter the following info for the new planet..."
  planet_hash.each do |key, value|
    print "#{key.upcase}: "
    planet_hash[key] = gets.chomp

    if key == "mass in kg" || key == "distance from sun in km"
      while planet_hash[key].to_s.to_f != planet_hash[key].to_f || planet_hash[key].to_f <= 0
        puts "Please re-enter the #{key}: "
        planet_hash[key] = gets.chomp.to_f
      end
    end
  end

  new_planet = Planet.new(planet_hash["name"], planet_hash["color"], planet_hash["mass in kg"], planet_hash["distance from sun in km"], planet_hash["fun fact"])

  solar_system.add_planet(new_planet)
  return "\n#{new_planet.name} has been added!"
end

def find_distance_between_planets(solar_system)
  print "Please enter the name of planet 1: "
  planet_1 = gets.chomp.capitalize
  print "Please enter the name of planet 1: "
  planet_2 = gets.chomp.capitalize

  distance = solar_system.distance_between(planet_1, planet_2)

  return "#{planet_1} and #{planet_2} are #{distance} km apart!"
end

def main

  solar_system = provide_solar_system_info()

  user_decision = nil

  while user_decision != 5

    print display_menu(solar_system)
    user_decision = gets.chomp.to_i


    if user_decision == 1
      puts list_planets(solar_system)

    elsif user_decision == 2
      puts show_planet_info(solar_system)

    elsif user_decision == 3
      puts add_planet(solar_system)

# TODO: error handling
    elsif user_decision == 4
      puts find_distance_between_planets(solar_system)

    elsif user_decision == 5
      exit()

    else
      puts "Oh no! Please enter a valid selection: "
    end
  end


end

main()

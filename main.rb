require_relative 'planet'
require_relative 'solar_system'
require 'pry'

# Welcome message to user
def welcome_message
  puts "=" * 80
  puts "\t\t\tHello and Welcome to THE MAGIC SCHOOL BUS!"
  puts "\tOn today's adventure, we will be exploring the Solar System of Anirtak..."
  puts "=" * 80
  puts "Let's choose from our options below! "
  puts "|| A || : Explore a list of all the planets"
  puts "|| B || : Discover all the details about a planet"
  puts "|| C || : Add your own planet"
  puts "|| D || : Find the distance between two planets"
  puts "|| Q || : Hop off the bus, and exit!"

  main
end

# Main method that interacts with user
def main
  xandar = Planet.new("XANDAR","aquamarine powder blue", 6.39e23, 2.279e8,
    "It's been known to host living creatures that are closely related to smurfs")
  onurb = Planet.new("ONURB", "shades of lemon, light salmon, and honeydew",
  1.898e27, 7.785e8, "It does not have a true surface, as the planet is mostly swirling gases and liquids")

  solar_system = SolarSystem.new("Anirtak")
  solar_system.add_planet(xandar)
  solar_system.add_planet(onurb)

  # loop until user quits
  user_play = "Y"
  while user_play == "Y"
    print  "Enter A, B, C, D or Q: "
    user_input = gets.chomp.strip.upcase
    while user_input !='A' &&
      user_input != 'B' &&
      user_input != 'C' &&
      user_input != 'D' &&
      user_input != 'Q'
      print "EEP. Please try again: "
      user_input = gets.chomp.strip.upcase
    end
    list = solar_system.list_planets

      if user_input == 'A'
        puts list

      elsif user_input == 'B'
        puts "Let's begin our wild adventure! "
        puts "What planet would you like to learn about?"
        puts list
        print "Please enter the name of the planet: "
        user_planet = gets.chomp.strip.upcase
        found_planet = solar_system.find_planet_by_name(user_planet)

        if found_planet
          puts "Your choice is OUT OF THIS WORLD! Here's everything you need to know about #{found_planet.name}"
          puts found_planet.summary
        end

      elsif user_input == 'C'
        puts "Let's make a planet!"
        print "What is the name of the planet? "
        new_planet_name = gets.chomp.strip.upcase

        print "What is #{new_planet_name}'s color: "
        new_planet_color = gets.chomp.strip

        print "What is #{new_planet_name}'s mass in kg? "
        new_planet_mass = gets.chomp.strip.to_f
        while new_planet_mass <= 0 || new_planet_mass.to_s == "0.0"
          puts "Invalid, please enter a positive number"
          print "What is #{new_planet_name}'s mass in kg? "
          new_planet_mass = gets.chomp.strip.to_f
        end

        print "What is #{new_planet_name}'s  distance from the sun in km? "
        new_planet_distance_sun = gets.chomp.strip.to_f
        while new_planet_distance_sun <= 0 || new_planet_distance_sun.to_s == "0.0"
          puts "Invalid, please enter a positive number"
          print "What is #{new_planet_name}'s distance from the sun in km? "
          new_planet_distance_sun = gets.chomp.strip.to_f
        end

        print "What is a fun fact about #{new_planet_name}? "
        new_planet_fact = gets.chomp.strip

        new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass,
        new_planet_distance_sun, new_planet_fact)
        solar_system.add_planet(new_planet)

      elsif user_input == 'D'
        puts list
        puts "Please choose two planets from the above list"
        print "Please enter the name of the first planet: "
        user_first_planet = gets.chomp.strip.upcase
        print "Please enter the name of the second_planet: "
        user_second_planet = gets.chomp.strip.upcase

        first_user_planet_found = solar_system.find_planet_by_name(user_first_planet)
        second_user_planet_found = solar_system.find_planet_by_name(user_second_planet)

        if first_user_planet_found && second_user_planet_found
          puts solar_system.distance_between(first_user_planet_found, second_user_planet_found)
        end

      elsif user_input == 'Q'
        puts "Thank you for playing! Come back again for another adventure!"
        puts
        exit
      end

  puts "Would you like to keep exploring (Y/N)?"
    user_play = gets.chomp.upcase
  end

  puts "Thank you for playing! Come back again for another adventure!"
  exit
end

welcome_message

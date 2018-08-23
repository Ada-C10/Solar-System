require_relative 'planet'
require_relative 'solar_system'

def welcome_message
  puts "=" * 80
  puts "Hello and Welcome to THE MAGIC SCHOOL BUS!"
  puts "On today's adventure, we will be exploring the Solar System of Anirtak..."
  puts "=" * 80
  puts "Let's choose from our options below! "
  puts "|| A || : Explore a list of all the planets"
  puts "|| B || : Discover all the details about a planet"
  puts "|| C || : Add your own planet"
  puts "|| Q || : Hop off the bus, and exit!"

  main
end

def main
  xandar = Planet.new("XANDAR","aquamarine powder blue", 6.39e23, 2.279e8,
    "It's been known to host living creatures similar to smurfs")
  onurb = Planet.new("ONURB", "shades of lemon, light salmon, and honeydew",
  1.898e27, 7.785e8, "It does not have a true surface, as the planet is mostly swirling gases and liquids")

  solar_system = SolarSystem.new("Anirtak")
  puts "creating new solar system"
  solar_system.add_planet(xandar)
  solar_system.add_planet(onurb)


  user_play = "Y"
  while user_play == "Y"
    print  "Enter A, B, C, or Q: "
    user_input = gets.chomp.strip.upcase
    while user_input !='A' && user_input != 'B' && user_input != 'C' && user_input != 'Q'
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
        print "What is #{new_planet_name}'s  distance from the sun in km? "
        new_planet_distance_sun = gets.chomp.strip.to_f
        print "What is a fun fact about #{new_planet_name}? "
        new_planet_fact = gets.chomp.strip

        new_planet = Planet.new(new_planet_name, new_planet_color, new_planet_mass,
        new_planet_distance_sun, new_planet_fact)
        solar_system.add_planet(new_planet)
        # new_list = solar_system.list_planets
        # puts new_list



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

# # main.rb
require_relative 'planet'
require_relative 'solar_system'
require "pry"

#storing the planets and adding them to solar_system WomenofCode
def main
  solar_system = SolarSystem.new('Women of Code')

  earth = Planet.new("Earth", "Green", 1000, 430, "It's hot")
  solar_system.add_planet(earth)

  bay = Planet.new("Bay", "Purple", 4000, 342, "Largest flea market capitol of the world")
  solar_system.add_planet(bay)

  sasquatch = Planet.new("Sasquatch", "Brown", 3400, 234, "It's really fuzzy")
  solar_system.add_planet(sasquatch)

  hammock = Planet.new("Hammock", "Rainbow", 5646, 642, "Everyone lives on a Hammock")
  solar_system.add_planet(hammock)

  santa = Planet.new("Santa", "Ocean", 1040, 378, "The fountain of youth lives here")
  solar_system.add_planet(santa)

  #test to check if planet exisist in solar_system
  #   santaCruz = Planet.new("SantaCruz", "Dummy", 4839, 034, "There is no place like home")
  #   solar_system.add_planet(santaCruz)

  #   found_planet = solar_system.find_planet_by_name("sdf")
  #       puts found_planet
  # # => #<Planet:0x00007fe7c2868ee8>
  #       puts found_planet.summary

  #prompt user for what they would like to do in the SolarSystem program
  puts "Please select what you would like to learn about Women of Code Solar System by number ex.(1)"
  puts "1. List Planets\n2. Add Your Own Planet\n3. Exit"
  print "Number: "
  user_input = gets.chomp.to_i
  puts

  #selections of option based on user reponse
  #The number 3 will exit the program
  until user_input == 3

    #slection 1 prints the planets listed in solar_system
    if user_input == 1
      list = solar_system.list_planets
      puts list

      #prompt user to type the planet they are intersted in looking up
      #if planet is found the summary of the planet will be printed
      #reprompt user is the there input does not match a planet in the solar_system
      puts "What Planet would you like to learn about? Please type your planet ex(Earth).\n\n"
      print "Planet: "
      planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(planet)
      if found_planet.class == Planet
        puts found_planet.summary
      end

    #user adds a planet to the solar_system program
    elsif user_input == 2
      puts "What would you like to name your planet?"
      name = gets.chomp
      puts "What color(s) is your planet?"
      color = gets.chomp
      puts "Your planet Mass in Kg:"
      mass_kg = gets.chomp
      puts "Distance from the Sun"
      distance_from_sum_km = gets.chomp
      puts "Fun Facts"
      fun_fact = gets.chomp

      new_planet = Planet.new(name, color, mass_kg, distance_from_sum_km, fun_fact)
      #stores planet in solar_system program for user to recall until they exit
      solar_system.add_planet(new_planet)
    end

    #reprompt user until they exit
    puts "\nPlease select what you would like to learn about Women of Code Solar System"
    puts "1. List Planets\n2. Add Your Own Planet\n3. Exit"
    print "Number: "
    user_input = gets.chomp.to_i
  end
end

main

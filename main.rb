require_relative 'planet'
require_relative 'star_name'
require 'terminal-table'
require 'colorize'


# BONUS - PUT THIS IN A TABLE!
def main
  solar_system = SolarSystem.new('Sol')
  pluto = Planet.new("Pluto", "Blue", 1.309e22, 4.67e9, "It's not really a planet!")
  solar_system.add_planet(pluto)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new("Mars", "Red", 6.39e23, 2.279e8, "We may live on it someday")
  solar_system.add_planet(mars)

  puts solar_system.distance_between(earth, mars)

  puts "\nWould you like to do:\
  \n(1) list the planets\
  \n(2) learn about planet details\
  \n(3) add a planet to the solar system\
  \n(4) exit?"
  action = gets.chomp.downcase

  until action == "exit" || action.include?("4")
    if action.include?("list") || action.include?("1")
      puts solar_system.list_planets
    elsif action.include?("details") || action.include?("2")
      puts "\nName a planet you wish to learn about."
      found_planet = solar_system.find_planet_by_name(gets.chomp.capitalize)
        if found_planet == nil
          puts "This planet is not currently in our system. " <<
          "Consider adding this planet."
        else
          puts found_planet.summary
        end
    elsif action.include?("add") || action.include?("3")
      puts "\nPlease answer the following information:"
      print "Name:"
      name = gets.chomp
      print "Color:"
      color = gets.chomp
      print "Mass in km:"
      mass = gets.chomp.to_f
      print "Distance from sun in km:"
      distance = gets.chomp.to_f
      print "Fun fact:"
      fun_fact = gets.chomp

      new_planet = Planet.new(name, color, mass, distance, fun_fact)
      solar_system.add_planet(new_planet)
    end

    puts "\nWould you like to do:\
    \n(1) list the planets\
    \n(2) learn about planet details\
    \n(3) add a planet to the solar system\
    \n(4) exit?"
    action = gets.chomp.downcase
  end


  #planet summary
  # pluto = Planet.new("Pluto", "Blue", "1.309e22", "4.67e9", "It's not really a planet!")
  # puts pluto.summary
  # puts ""
  # mars = Planet.new("Mars", "Red", "6.39e23", "2.279e8", "We may live on it someday")
  # puts mars.summary
  # # solar system instance
  # solar_system = SolarSystem.new('Sol')
  # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  #
  # solar_system.add_planet(earth)
  # solar_system.add_planet(pluto)
  # solar_system.add_planet(mars)
  # list = solar_system.list_planets
  # puts list
  #
  # found_planet = solar_system.find_planet_by_name('Earth')
  #
  # puts found_planet.name
  #
  # puts found_planet.summary


end


main

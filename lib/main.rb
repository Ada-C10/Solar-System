require_relative 'planet'
require_relative 'solar_system'

# Restructure main to do the following:

# second method to call in main method to tell details
# Add a planet details option to the control loop. When the user picks this option, the program should should call a separate method that will:
#
# Ask them for the name of the planet they wish to learn about
# Display details for that planet
# Again, you should reuse a method you've already built to handle formatting the planet information.
#
# Add an add planet option to the control loop. When the user picks this option, the program should call a separate method that will:

def planet_details(solar_system)
  print "Enter the planet name you would like to learn about: "
  # you, user_namechoice is a string
  user_namechoice = gets.chomp.capitalize
  solar_system.planets.each do | planet |
    if planet.name == user_namechoice
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    end
  end
end
#
# Ask the user for details about the planet
# Create a new instance of Planet with that info
# Add it to the SolarSystem
# The new planet should now appear in the list of planets, and the user should be able to see its details.
def new_planet(solar_system)
  puts "Ok let me ask you some info about the new planet to add: "
  print "Planet Name: "
  new_name = gets.chomp.capitalize
  print "Planet Color: "
  new_color = gets.chomp
  print "Planet mass in kg: "
  new_mass = gets.chomp.to_f
  print "Distance from the sun: "
  new_distance = gets.chomp.to_f
  print "Fun Fact: "
  new_fact = gets.chomp
  # how can I set new planet object name to the name of the planet
  new_planet = Planet.new(new_name, new_color, new_mass, new_distance, new_fact)
  solar_system.add_planets(new_planet)
  # print out new list and planet info
  puts "Current planet list: "
  puts solar_system.list_planets
  puts "New planet details: "
  puts planet_details(solar_system)
end
#
# Create a SolarSystem and add some Planets
# Enter a control loop that repeatedly asks the user what to do next. The two options at this point are list planets and exit.
# Remember that you've already implemented listing planets - you should be able to call that method rather than recreating the logic here.

# main
def main
  # Planet Class objects
  hoth = Planet.new('Hoth', 'white', 5.972e24, 1.496e8, 'Ice planet and base for the rebel alliance')
  endor = Planet.new('Endor', 'Green', 6.22e34, 1.23e9, 'Filled with lots of ewoks')
  batuu = Planet.new('Batuu', 'grey-green', 7.323e22, 1.21e4, 'Remote oupost on the galaxys edge')
  alderaan = Planet.new('Alderaan', 'blueish green', 1.1, 1.11e6, 'Home of Princess Leia, destroyed by Darth Vader' )

  # Solar System Class object with methods
  solar_system = SolarSystem.new('Black Sun')
  solar_system.add_planets(hoth)
  solar_system.add_planets(endor)
  solar_system.add_planets(batuu)
  solar_system.add_planets(alderaan)
  list = solar_system.list_planets

  in_progress = true
  while in_progress

    # Output things to main
    puts "What would you like to do?"
    puts
    puts "1. List Planets in Solar System"
    puts "2. Planet Details "
    puts "3. Add another planet "
    puts "4. Exit"
    user_choice = gets.chomp

    case user_choice
    when "1"
      puts list
    when "2"
      return planet_details(solar_system)
    when "3"
      return new_planet(solar_system)
    when "4"
      puts "Exiting Program"
      in_progress = false
    end
  end
end

main





# old code
# puts hoth.summary
# puts endor.summary
# puts list
#
# found_planet = solar_system.find_planet_by_name(endor)
# puts found_planet.summary

# allows main.rb to access planet.rb and
# solar_system.rb
require_relative 'planet'
require_relative 'solar_system'

# main code that interacts with user
# to create solar system and add planets
def main
  # let's user know what to expect
  puts "Fill in the information below to create a planet within your solar system."

  # user names their solar system so
  # new solar system is created that can be
  # accessed throughout the code
  print "Name your solar system: "
  solar_system_name = gets.chomp.to_s
  solar_system_name = SolarSystem.new(solar_system_name)

  # calls add_new_planet method to create new planet
  add_new_planet(solar_system_name)

  # default value is nil until user enters input
  yes_or_no = nil
  # until user doesn't want to add a new planet
  # user will be asked to add new planet
  until yes_or_no == "no"
    # asks for user input
    print "\nAdd another planet? (yes/no): "
    yes_or_no = gets.chomp.to_s

    # if user wants to add new planet
    # user will be asked the same questions when
    # they were asked to add the first planet
    if yes_or_no =~ /[yY][eE][sS]/
      add_new_planet(solar_system_name)
    # if user doesn't want to add new planet
    # they are given a few options to proceed
    elsif yes_or_no =~ /[nN][oO]/
      # default value of user_options is nil
      user_options = nil

      # until user wants to exit, options will
      # continue to show up
      until user_options == "3"
        # asks user to make decision
        print "\nOptions:\n1. List Planets\n2. Search Planet Details\n3. Exit\n"
        print "\nYour choice (1/2/3): "
        user_options = gets.chomp.to_s

        # user will be shown the list of planets
        if user_options =~ /[1]/ && user_options.length == 1
          list = solar_system_name.list_planets
          puts "\n#{list}"
        # user will be shown the details of the planet
        # they want to learn about
        elsif user_options =~ /[2]/ && user_options.length == 1
          planet_details(solar_system_name)
        # user will exit the program completely
        elsif user_options =~ /[3]/ && user_options.length == 1
          puts "Goodbye!\n"
        end
      end
    end
  end
end

# user will be shown the details of the planet
# in the solar_system
def planet_details(solar_system_name)
  # asks user for the planet they want to find
  print "\nWhich planet do you want to learn about: "
  planet_to_lookup = gets.chomp.to_s

  # finds planet in the solar system and returns the summary
  found_planet_name = solar_system_name.find_planet_by_name(planet_to_lookup)
  found_planet_name
  puts found_planet_name.summary
end

# allows user to add new planet each time
# and adds it to same solar system
def add_new_planet(solar_system_name)
  # stores planet_name
  print "\nPlanet's name: "
  planet_name = gets.chomp.to_s

  # stores color
  print "Planet's color: "
  color_of_planet = gets.chomp.to_s

  # stores weight
  print "Planet's weight: "
  weight_of_planet = gets.chomp.to_i

  # stores distance from sun'
  print "Planet's distance from sun (km): "
  distance_from_sun = gets.chomp.to_i

  # stores fun fact
  print "A fun fact about the planet: "
  fun_fact_about_planet = gets.chomp.to_s

  # creates new planet with all the user inputs
  new_planet = Planet.new(planet_name, color_of_planet, weight_of_planet, distance_from_sun, fun_fact_about_planet)
  # adds that new planet to same solar system
  solar_system_name.add_planet(new_planet)

  # let's user know we got their planet's info
  puts "\nCool! Your new planet is named: #{new_planet.name}"
end

# calls main method
# and allows user to interact with program
main

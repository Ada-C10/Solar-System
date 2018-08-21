require_relative 'planet'
require_relative 'solar_system'

# Restructure main to do the following:
#
# Create a SolarSystem and add some Planets
# Enter a control loop that repeatedly asks
# the user what to do next.
# The two options at this point are list planets and exit.

def main
  ### Restructure ###
  # Creating solar system
  mario_system = SolarSystem.new('Mario_World')

  # Adding planets to solar system
  mario_system.add_planet(Planet.new('Bowser', 'black', 9459e23, 345.9e8, 'A planet ruled by Boswer'))
  mario_system.add_planet(Planet.new('Yoshi', 'green', 9.39e23, 227.9e8, 'A calm planet full habitated by Yoshis'))


  def user_actions(solar_system)
    puts "What would you like to do?"
    options = ["list planets", "planet details", "exit"]
    puts options.join(", ")
    user_selection = gets.chomp.capitalize

    # Checking that user selection is valid
    while options.include?(user_selection) == false
      puts "Please enter a valid option: #{options.join(", ")}"
      user_selection = gets.chomp.downcase
    end

    case user_selection
      # CALLING list planets method if user selection matches
      when "list planets" then solar_system.list_planets
      # Ask user for name of planet
      when 'planet details'
        puts "What planet would you like to learn about?"
        planet_to_find = gets.chomp.downcase
        # Display details for that planet
        solar_system.find_planet_by_name(planet_to_find).summary
    end
  

  end

  puts user_actions(mario_system)
  # # Creating a list of planets
  # list = solar_system.list_planets


end

main

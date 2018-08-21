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
  solar_system = SolarSystem.new('Mario_World')

  # Adding planets to solar system
  solar_system.add_planet(Planet.new('Bowser', 'black', 9459e23, 345.9e8, 'A planet ruled by Boswer'))
  solar_system.add_planet(Planet.new('Yoshi', 'green', 9.39e23, 227.9e8, 'A calm planet full habitated by Yoshis'))


  def user_actions
    puts "What would you like to do?"
    options = ["list planets", "exit"]
    puts options.join(", ")
    user_selection = gets.chomp.downcase

    # Checking that user selection is valid
    while options.include?(user_selection) == false
      puts "Please select a valid option #{options.join(", ")}"
      user_selection = gets.chomp.downcase
    end

  end

  user_actions
  # # Creating a list of planets
  # list = solar_system.list_planets


end

main

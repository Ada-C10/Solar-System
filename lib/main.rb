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


  # def user_actions(solar_system)
    # user_selection = ""
    # puts "What would you like to do?"
    # options = ["list planets", "planet details", "add planet", "exit"]
    # # Checking that user selection is valid
    # while options.include?(user_selection) == false
    #   puts "Please enter one of the following: #{options.join(", ")}"
    #   user_selection = gets.chomp.downcase
    # end

    def run_selection(user_selection, solar_system)
      case user_selection
        # CALLING list planets method if user selection matches
        when "list planets"
          return solar_system.list_planets
        # Ask user for name of planet
        when 'planet details'
          puts "What planet would you like to learn about?"
          user_planet_to_find = gets.chomp.downcase
          # Returning different results based on whether planet is in system
          if solar_system.find_planet_by_name(user_planet_to_find).is_a? String
            return "Sorry, #{user_planet_to_find} is not in our system."
          else
            return solar_system.find_planet_by_name(user_planet_to_find).summary
          end


          # Add in validation for find_planet if planet is not valid...

          # Add a planet when they want to add a planet
        when "add planet"
          # Asking user for planet details/storing details in variables
          puts "Please enter the following details about your planet:"
          puts "Name:"
          name = gets.chomp
          puts "Color:"
          color = gets.chomp.downcase
          puts "Mass_kg:"
          mass_kg = gets.chomp.to_i
          puts "Distance from the sun in km:"
          distance_from_the_sun_km = gets.chomp.to_i
          puts "A fun fact about #{name}:"
          fun_fact = gets.chomp

          # Creating an instance of the planet with user details
          # name = Planet.new(name, color, mass_kg, distance_from_the_sun_km, fun_fact )

          # Adding planet to solar system
          solar_system.add_planet(Planet.new(name, color, mass_kg, distance_from_the_sun_km, fun_fact))

          # RETURNING summary of new planet
          puts "Here's a summary of #{name}:"
          return solar_system.find_planet_by_name(name).summary
      end
    end

    # Maybe wrap this in a method and call it until user enters exit?
    user_selection = ""
    puts "What would you like to do?"
    options = ["list planets", "planet details", "add planet", "exit"]
    # Checking that user selection is valid
    while options.include?(user_selection) == false
      puts "Please enter one of the following: #{options.join(", ")}"
      user_selection = gets.chomp.downcase
    end

    until user_selection == "exit"
      puts run_selection(user_selection, mario_system)
      user_selection = ""
      puts "What would you like to do?"
      options = ["list planets", "planet details", "add planet", "exit"]
      # Checking that user selection is valid
      while options.include?(user_selection) == false
        puts "Please enter one of the following: #{options.join(", ")}"
        user_selection = gets.chomp.downcase
      end
    end

  end

  # puts user_actions(mario_system)

# end

main

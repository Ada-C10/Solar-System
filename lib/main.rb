require_relative 'planet'
require_relative 'solar_system'

def main
  # INITIALIZING solar system
  mario_system = SolarSystem.new('Mario_World')

  # ADDING instances of two planets to solar system
  mario_system.add_planet(Planet.new('Bowser', 'black', 9459e23, 345.9e8, 'A planet ruled by Boswer'))
  mario_system.add_planet(Planet.new('Yoshi', 'green', 9.39e23, 227.9e8, 'A calm planet full habitated by Yoshis'))

  # METHOD to analyze user selection
  def run_selection(user_selection, solar_system)
    # CASE statement for user_selection
    case user_selection
      # CALLING list planets method if user selection matches
      when "list planets"
        return solar_system.list_planets
      # Ask user for name of planet
      when 'planet details'
        puts "What planet would you like to learn about?"
        user_planet_to_find = gets.chomp.downcase
        # Finding planet via find_planet_by_name method
        solar_system.find_planet_by_name(user_planet_to_find)

      # ADDING a planet when user enters that option
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

        # ADDING planet to solar system
        solar_system.add_planet(Planet.new(name, color, mass_kg, distance_from_the_sun_km, fun_fact))

        # CALLING list_planets to show planets have updated
        solar_system.list_planets
      end
    end

    # INITIALIZING user_selection as an empty string
    user_selection = ""
    puts "What would you like to do?"
    # SETTING user options in options array
    options = ["list planets", "planet details", "add planet", "exit"]
    # VALIDATING user selection against options
    while options.include?(user_selection) == false
      puts "Please enter one of the following: #{options.join(", ")}"
      user_selection = gets.chomp.downcase
    end

    # UNTIL user enters exit, ask for selection and run associated code
    until user_selection == "exit"
      puts run_selection(user_selection, mario_system)
      user_selection = ""
      puts "What would you like to do?"
      options = ["list planets", "planet details", "add planet", "exit"]
      # VALIDATING user entry
      while options.include?(user_selection) == false
        puts "Please enter one of the following: #{options.join(", ")}"
        user_selection = gets.chomp.downcase
      end
    end
  end

main

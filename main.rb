require_relative 'planet.rb'
require_relative 'solar_system.rb'




# Creating an instance(s) of SolarSystem and Planet at the opening of this program
def start()
  # Creating an instance of SolarSystem
  $solar_system = SolarSystem.new("Sol")

  # Creating first instance of Planet
  planet_1 = Planet.new("Mercury", "Gray", 0.330, 57.9, "Smallest planet in our Solar System")

  # Creating second instance of Planet
  planet_2 = Planet.new("Venus", "Light Gray", 4.87, 108.2, "Spins in an opposite direction as compared to all other planets in the Solar System")

  # Adding a Planet object into the instance method 'add_planet' within the SolarSystem class
  $solar_system.add_planet(planet_1)
  $solar_system.add_planet(planet_2)
end

# Method for option selection
def options()
  puts
  puts "---- Please make a selection: ----"
  puts "1. View planet details"
  puts "2. View summary for all planets"
  puts "3. Add a planet"
  puts "4. Exit program"
  puts "Please make a selection: "
  user_selection = gets.chomp.capitalize

  return user_selection
end

# Method for option 1
def view_planet()
  puts "Which planet would you like to learn more about?"
  planet_choice = gets.chomp.capitalize
  planet_info = $solar_system.find_planet_by_name(planet_choice)

  if planet_info != false
    puts "Here is information about #{planet_choice}: #{planet_info.summary}"
  end
end

# Method for option 2
def view_all_planets()
  puts "Here is information about all planets in the database: "
end

# Method for option 3
def add_planet()
  puts "Lets enter a planet"
end


# Running the CLI (command line interface)
def main
  start()

  puts "******** Welcome to the Solar System Program! ********"

  selection = "enter_loop"
  until selection == "never_ending_loop_until_exit"

      selection = options

      if selection == "1"
        view_planet
      elsif selection == "2"
        view_all_planets
      elsif selection == "3"
        add_planet
      elsif selection == "4" || selection == "Exit"
        break
      else
        puts "That is an invalid selection. Please choose a valid option: "
        selection = gets.chomp.capitalize
      end

  end

  puts "Thanks for using the Solar System Program! Goodbye."
end

main

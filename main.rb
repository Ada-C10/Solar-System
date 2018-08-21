require_relative 'planet.rb'
require_relative 'solar_system.rb'

# Method for option 1
def view_planet()
  puts "Which planet would you like to learn more about?"

end

# Method for option 2
def view_all_planets()
  puts "Here is information about all planets in the database: "
end

# Method for option 3
def add_planet()
  puts "Lets enter a planet"
end

def main
  # Creating an instance of SolarSystem
  solar_system = SolarSystem.new("Sol")

  # Creating first instance of Planet
  planet_1 = Planet.new("Mercury", "Gray", 0.330, 57.9, "Smallest planet in our Solar System")

  # Creating second instance of Planet
  planet_2 = Planet.new("Venus", "Light Gray", 4.87, 108.2, "Spins in an opposite direction as compared to all other planets in the Solar System")

  # Adding a Planet object into the instance method 'add_planet' within the SolarSystem class
  solar_system.add_planet(planet_1)
  solar_system.add_planet(planet_2)

  puts "******** Welcome to the Solar System Program! ********"
  
  selection = "enter"
  until selection == "4" || selection == "exit"

    puts "Please make a selection:"
    puts "1. View planet details"
    puts "2. View summary for all planets"
    puts "3. Add a planet"
    puts "4. Exit program"
    puts "Please make a selection: "
    selection = gets.chomp.downcase

      if selection == "1"
        view_planet
      elsif selection == "2"
        view_all_planets
      elsif selection == "3"
        add_planet
      else
        puts "That is an invalid selection. Please choose a valid option: "
        selection = gets.chomp.downcase
      end

  end

  puts "Thanks for using the Solar System Program! Goodbye."
  puts
end

main

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
  planet_listing = $solar_system.list_planets
  puts planet_listing
end

# Method for option 3
def add_planet()
  puts "Lets enter a planet"

  # Loops until user exits or confirms information entry into the 'database'
  confirmation = "enter_loop"
  until confirmation == "never_ending_loop_until_exit"

    # Variables for user input
    puts "What is the planet name?"
    name = gets.chomp.capitalize
    puts "What color is the planet?"
    color = gets.chomp.downcase
    puts "What is the mass in kg?"
    mass = gets.chomp
    puts "What is the distance from the sun in km?"
    distance = gets.chomp
    puts "What is a fun fact about #{name}?"
    fact = gets.chomp.downcase

    # Confirming data before inserting instance of Planet into instance of SolarSystem
    puts "Lets double check your entries before adding it to the database"
    puts "Name: #{name}\nColor: #{color}\nMass: #{mass}\nDistance: #{distance}\nFact: #{fact}"

    puts "Do you want to add this information to the database?"
    puts "1. Enter 'yes' if you want to add this information."
    puts "2. Enter 'exit' if you do not want to add this entry and go back to the main menu."
    puts "3. Enter anything else to re-enter your data."
    confirmation = gets.chomp.downcase

    if confirmation == "yes" || confirmation == "y" || confirmation == "1"
      new_planet = Planet.new(name, color, mass, distance, fact)
      $solar_system.add_planet(new_planet)
      break
    elsif confirmation == "exit" || confirmation == "2"
      break
    else
      puts "Lets re-enter the data for your planet."
    end
  end
  puts "Your entry has been added to the database."
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

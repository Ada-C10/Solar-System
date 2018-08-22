# load classes
require_relative "planet"
require_relative "solar_system"

# TODO - handle multiple entries for add planet
# TODO: write tests
# TODO: planets list instance var??? need to bee??

# stores instantiated classes
def provide_solar_system_info()
  # instantiate SolarSystem
  solar_system = SolarSystem.new('Sol')

  # instantiate Planet
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  venus = Planet.new('Venus', 'white', 99, 100, 'hot hot hot')
  mercury = Planet.new('Mercury', 'gray', 0.01, 0.02, 'fire and smoke')

  # add instances of planets to sol instance of solar system
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)

  # returns Sol instance (this solar system has many planets)
  return solar_system
end

# displays/returns our menu + user prompt text
def display_menu(solar_system)
  return "
  ++ WELCOME TO THE PLANETARIUM! ++ \n
  What would you like to do?
  [1] View planets in the #{solar_system.star_name} solar system!
  [2] View details about a specific planet!
  [3] Add a new planet to the #{solar_system.star_name} solar system!
  [4] Calculate the distance between two planets!
  [5] Exit!
  \nPlease enter the number of your selection: "
end

# list the names of planets in the solar system
def list_planets(solar_system)
  return solar_system.list_planets
end

# verify that the planet a user has entered exists
def check_valid_planet(solar_system, user_planet)
  # store valid options/planets
  choices = list_planets(solar_system)

  # run loop asking user to try again UNTIL a planet is found (evaluating true) + show possible choices + accept new user input
  until solar_system.find_planet_by_name(user_planet)
    puts ""
    puts "We don't know that planet -- yet!"
    puts "Here are your choices: \n#{choices}"
    print "Please type the full name of the planet: "
    user_planet = gets.chomp
  end

  # return planet object (as stored in a variable)
  found_planet = solar_system.find_planet_by_name(user_planet)
  return found_planet
end

# show info about a certain specified planet
def show_planet_info(solar_system)

  puts ""
  # ask for and receive user input
  print "Which planet would you like to learn more about? "
  user_planet = gets.chomp
  # call method to verify that planet input is valid
  # ultimately, it will return a valid planet as an object
  user_planet = check_valid_planet(solar_system, user_planet)

  # this method will return a summary for the valid planet object
  return user_planet.summary
end

# add a new planet to the solar system
def add_planet(solar_system)
  # create a hash to store new planet info
  planet_hash =
  {
    "name" => nil,
    "color" => nil,
    "mass in kg" => nil,
    "distance from sun in km" => nil,
    "fun fact" => nil
  }

  # QUESTION: why doesn't this loop store changes if I loop through via |key, value| and then use value to store new values instead of hash[key] = "new value"?
  # QUESTION: Also, why doesn't the code below work if I remove value from |key, value| if I don't reference value anywhere else??
  puts "Please enter the following info for the new planet..."
  planet_hash.each do |key, value|
    # update each value in the planet hash with user input
    print "#{key.upcase}: "
    planet_hash[key] = gets.chomp

    # for mass and distance, we need to make sure they are positive real numbers
    if key == "mass in kg" || key == "distance from sun in km"
      while planet_hash[key].to_s.to_f != planet_hash[key].to_f || planet_hash[key].to_f <= 0
        puts "Please re-enter the #{key}: "
        planet_hash[key] = gets.chomp.to_f
      end
        # if user did enter a valid value for those two attributes, then make sure they are stored as numeric values (floats)
        planet_hash[key] = planet_hash[key].to_f
    end
  end

  # instantiate new planet with user input as attributes; store as var
  new_planet = Planet.new(planet_hash["name"], planet_hash["color"], planet_hash["mass in kg"], planet_hash["distance from sun in km"], planet_hash["fun fact"])

  # add new planet to solar system
  solar_system.add_planet(new_planet)
  # return a message to confirm creation/addition was successful
  return "\n- #{new_planet.name} has been added! -"
end

# find distance between two given planets
def find_distance_between_planets(solar_system)
  # ask for and store user input for each planet
  # check that the input planet exists, finally returning a valid planet
  # store name
  print "Please enter the name of planet 1: "
  planet_1 = gets.chomp.capitalize
  planet_1 = check_valid_planet(solar_system, planet_1)
  planet_1_name = planet_1.name

  print "Please enter the name of planet 2: "
  planet_2 = gets.chomp.capitalize
  planet_2 = check_valid_planet(solar_system, planet_2)
  planet_2_name = planet_2.name

  # find distance using method from solar system class
  distance = solar_system.distance_between(planet_1_name, planet_2_name)

  # return a string detailing the distance
  return "- #{planet_1_name} and #{planet_2_name} are #{distance} km apart! -"
end

def main
  # load solar system info into a variable
  solar_system = provide_solar_system_info()
  # initialize user input variable
  user_decision = nil

  # continue looping until user exits
  while true

    # display menu + gather user input
    print display_menu(solar_system)
    user_decision = gets.chomp.to_i
    puts ""

    # user selection conditionals, each leading to its related method
    if user_decision == 1
      puts list_planets(solar_system)

    elsif user_decision == 2
      puts show_planet_info(solar_system)

    elsif user_decision == 3
      puts add_planet(solar_system)

    elsif user_decision == 4
      puts find_distance_between_planets(solar_system)

    elsif user_decision == 5
      puts "Goodbye, stargazer!"
      exit()

    # if none of the options above are selected, show error message to user + loop will continue and take in new input
    else
      puts "Oh no! Please enter a valid selection: "
    end
  end
end

# execute driver code
main()

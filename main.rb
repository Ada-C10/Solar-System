##################################
# Wave #1 and Wave #2
##################################
#main.rb
require_relative 'planet'
require_relative 'solar_system'
#
# #Wave #1 Contain one method called main that will exercise your code
# def main

### Wave 2 Part 3. This method should create two different instances of Planet
  # solar_system = SolarSystem.new('Sol')
#   jupiter = Planet.new('Jupiter','orange', '5.972*10**24' , '770 million', 'is called after the ancient Roman sky-god')
#   # solar_system.add_planet(jupiter)
#   mars = Planet.new('Mars','red','6.39*10**23', '227.9 million',  'has ice caps in its North and South pole' )
#   # solar_system.add_planet(mars)
#
# #### Additional information for Wave #2 of the project
#   venus = Planet.new('Venus', 'red', '9', '6', 'has 10,000 bodies of water')
#   # solar_system.add_planet(venus)
#   mercury = Planet.new('Mercury','mauve','0','9','is an awesome planets')
#   # solar_system.add_planet(mercury)
#   earth = Planet.new('Earth','yellow','3','10','has another planet in it')
  # solar_system.add_planet(earth)
####This method should print out some of the planets' attributes

#### testing accessing mass of jupiter
#   puts jupiter.mass_kg
#   puts

#### testing accessing attributes for mars
#   mars = Planet.new(:color, :distance_from_sun_km)

#### Exercise the summary method in this method.
## We use 'puts' because we are calling
## an existing method from a separate and 'relative' file

  # puts mars.summary
  # puts jupiter.summary
# #######

# puts
# list = solar_system.list_planets
# puts list
# found_planet = solar_system.find_planet_by_name('Earth')
# puts found_planet
# puts found_planet.summary
# end
#
# p main

#############################################
#Wave #3
##############################################


def main
  solar_system = SolarSystem.new('Sol')
  loop do
    # collects input from user
    puts "Hello, you can choose to list planets, see planet details, add a planet or exit?"
    puts "Choose what you would like to do (list / details / exit / add): "
    input = gets.chomp
    # stop if user decides to exit the program
    break if input == "exit"
    # prints a list of planets if the user chooses list -
    # This is where we use instance of solar system using list_planets method
    if input ==  "list"
      planet_list = solar_system.list_planets
      puts planet_list

    elsif input == "details"
      # This is where we collect name of planet from user
      print "Name a planet: "
      planet = gets.chomp.downcase
      # We use find_planet_by_name instance method of Solar System to find planet and print details
      found_planet = solar_system.find_planet_by_name(planet)
        if found_planet
            puts found_planet.summary
        else
            puts "Planet not found."
        end
     end
     # Here we collect new information to add an imaginary new planet
     if input == "add"
        print "Create an imaginary planet. Give your planet a name: "
        new_planet_name = gets.chomp
        print "Give your planet a color: "
        color = gets.chomp
        print "Give your planet a mass in kg (i.e 6 or 9 ): "
        mass_kg = gets.chomp.to_i
        print "Give your planet distance from sun in km (i.e 10 or 8): "
        distance_from_sun_km = gets.chomp.to_i
        print "Provide fun fact about your new planet: "
        fun_fact = gets.chomp
        # adds an imaginary planet to planet list in solar system using the Planet and SolarSystem classes.
        new_planet = Planet.new(new_planet_name, color, mass_kg, distance_from_sun_km, fun_fact)
        solar_system.add_planet(new_planet)
        puts "#{new_planet.name} has been added to list"
     end
 end

end
main

require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main
  # creates instance of SolarSystem
  solar_system = SolarSystem.new('Sun')
  # creats instance of Planet
  mecury = Planet.new('Mercury', 'grey', 3.285e23, 5.791e8, "A year on Mercury is just 88 days long")
  # uses the instance method add_planet that works in the instance of class Solar System
  solar_system.add_planet(mecury)

  venus = Planet.new('Venus', 'brownish grey', 4.867e24, 1.082e8, "Third brightest object in Earth's sky after the Sun and Moon")
  solar_system.add_planet(venus)

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  mars = Planet.new('Mars', 'red', 6.41693e23, 2.2279e8, "Second smallest planet in the solar system")
  solar_system.add_planet(mars)

  jupiter = Planet.new('Jupiter', 'grey', 1.898e27, 7.785e8, "Has rings.")
  solar_system.add_planet(jupiter)

  saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, "Is the flattest planet")
  solar_system.add_planet(saturn)

  uranus = Planet.new('Uranus', 'light blue', 3.285e23, 2.871e9, "Hits the coldest temperatures of any planet.")
  solar_system.add_planet(uranus)

  neptune = Planet.new('Neptune', 'grey', 1.024e26, 4.495e9, "Has 14 moons.")
  solar_system.add_planet(neptune)

  loop do
    # collects an decison from user
    puts "You can list planets, see planet details, add a planet or exit? Choose an action (list / details / exit / add): "
    action = gets.chomp.downcase
    # break loop if user wants to exit
    break if action == "exit"
    # prints a list of planets if user chooses list - instance of solar system using list_planets method
    if action ==  "list"
      list = solar_system.list_planets
      puts list

    elsif action == "details"
      # collects name of planet from user
      print "Name a planet: "
      planet = gets.chomp.downcase
      # uses find_planet_by_name instance method of Solar System to find planet and print details
      found_planet = solar_system.find_planet_by_name(planet)
        if found_planet
            puts found_planet.summary
        else
            puts "Planet not found."
        end
     end
     # collects new information to add new planet
     if action == "add"
        print "Provide planet name: "
        new_planet_name = gets.chomp
        print "Provide planet color: "
        color = gets.chomp
        print "Provide planet mass in kg (e.g 5.683e26): "
        mass_kg = gets.chomp.to_i
        print "Provide planet distance from sun in km (e.g 4.495e9): "
        distance_from_sun_km = gets.chomp.to_i
        print "Provide fun fact about planet: "
        fun_fact = gets.chomp
        # adds new planet to planet list in solar system using the Planet and SolarSystem classes.
        new_planet = Planet.new(new_planet_name, color, mass_kg, distance_from_sun_km, fun_fact)
        solar_system.add_planet(new_planet)
        puts "#{new_planet.name} has been added to list"
     end
 end
end
main

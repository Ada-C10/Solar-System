require_relative 'planet'
require_relative 'solar_system'


def main
  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "Blue-green", 5.972e24, 1.496e8, "Only planet known to support life")

  mercury = Planet.new("Mercury", "Dark gray", 3.285e102, 35.98, "Smallest and innermost planet.")

  venus = Planet.new("Venus", "Green", 2.759e2, 38.41, "Named after a razor")

  mars = Planet.new("Mars", "Brown", 395e54, 47.34, "Soon a tourist destination")

  jupiter = Planet.new("Jupiter", "Purple", 9472e6, 97.35, "Drops of... crappy song")

  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  list = solar_system.list_planets
  # puts list

#  found_planet = solar_system.find_planet_by_name(planet_choice)



puts "Welcome to the Solar System Information Station!"
puts "What would you like to do (enter 1, 2, or 3 ): "
puts "1. List planets\n2. Add a planet\n3. Exit "
user_choice = gets.chomp.to_i
# if user_choice != 1 || user_choice != 2
# print "Please choose 1 or 2: "
# user_choice = gets.chomp
if user_choice == 1
  list = solar_system.list_planets
  puts list

  print "Which planet would you like to know about? "
  planet_choice = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet_choice)
  puts found_planet.summary

elsif user_choice == 2
  print "What would you like to call your planet? "
  user_name = gets.chomp
  @name = user_name

  print "What color is this planet? "
  user_color = gets.chomp
  @color = user_color

  print "What is the planets mass? "
  user_mass_kg = gets.chomp
  @mass_kg = user_mass_kg

  print "How far from the sun, in km, is the planet? "
  user_distance = gets.chomp
  @distance_from_sun_km = user_distance

  print "What is a fun fact about this planet? "
  user_fact = gets.chomp
  @fun_fact = user_fact

  @name = Planet.new(@name, @color, @mass_kg, @distance_from_sun_km, @fun_fact)

  new_planet = solar_system.add_planet(@name)

  list = solar_system.list_planets
  puts list

elsif user_choice != 1 || user_choice != 2
  until user_choice == 1 || user_choice == 2 || user_choice == 3
    print "Please choose 1 or 2: "
    user_choice = gets.chomp
  end
  elsif user_choice == 3
    puts "Goodbye"
    exit
  end
end
main
#puts planet_choice.summary
# sol = SolarSystem.new("Sol")
# expect(sol.name).must_equal "Sol"

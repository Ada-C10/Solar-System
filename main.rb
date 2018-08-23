require_relative 'planet'
require_relative 'solar_system'

def main
  puts "Fill in the information below to create a planet within your solar system."

  print "Name your solar system: "
  solary_system_name = gets.chomp.to_s
  solary_system_name = SolarSystem.new(solary_system_name)

  user_options = nil
  until user_options == "3"
    print "\nPlanet's name: "
    planet_name = gets.chomp.to_s

    print "Planet's color: "
    color_of_planet = gets.chomp.to_s

    print "Planet's weight: "
    weight_of_planet = gets.chomp.to_i

    print "Planet's distance from sun (km): "
    distance_from_sun = gets.chomp.to_i

    print "A fun fact about the planet: "
    fun_fact_about_planet = gets.chomp.to_s

    new_planet = Planet.new(planet_name, color_of_planet, weight_of_planet, distance_from_sun, fun_fact_about_planet)
    puts solary_system_name.add_planet(new_planet)

    puts "\nYour planet is named: #{new_planet.name}"
    puts "Your planet's color is: #{new_planet.color}"
    puts "Conclusion: #{new_planet.summary}."

    # print "\nWould you like to add another planet? (yes/no): "
    # user_response = gets.chomp!
    #
    # until user_response =~ /[yY][eE][sS]/ || user_response =~ /[nN][oO]/
    #   print "Try again:"
    #   user_response = gets.chomp
    # end

    print "\nOptions:\n1. List Planets\n2. Search Planet Details\n3. Exit\n"
    print "\nYour choice (1/2/3): "
    user_options = gets.chomp.to_s

    if user_options =~ /[1]/ && user_options.length == 1
      list = solary_system_name.list_planets
      puts "\n#{list}"
    elsif user_options =~ /[2]/ && user_options.length == 1
      print "\nWhich planet do you want to learn about: "
      planet_to_lookup = gets.chomp.to_s
      puts planet_to_lookup

      found_planet_name = solary_system_name.find_planet_by_name(planet_to_lookup)
      puts found_planet_name
      puts found_planet_name.summary
    elsif user_options =~ /[3]/ && user_options.length == 1
      puts "Goodbye!\n"
    end
  end
end

main

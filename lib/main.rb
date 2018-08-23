require_relative 'planets.rb'
require_relative 'solar_system.rb'
require 'pry'
#name, color, mass_kg, distance_from_sun_km, , fun_fact
def display_welcome
  puts "Welcome to the Solar System Program"
  puts "You can create your own solar system with this program."
end

def what_is_center_of_universe
  puts "What is the name of the center of your universe?"
  @star_name = gets.chomp
  puts "#{@star_name.capitalize} is the center of your universe"
end
#center_of_solarsystem = SolarSystem.new (star_name)

def prompt_user_input
  puts "What do you want to do?"
  puts "A. Add a planet\nB. List Planets \nC. Exit"
  puts "Enter your selection:"
  selection = gets.chomp.upcase.to_s
  return selection
end

def user_functions_options(selection, center_of_universe)
  if selection == 'A'
    prompt_user_to_add_planet(center_of_universe)
  selection = prompt_user_input
  elsif selection == 'B'
    prompt_user_to_list_planets(center_of_universe)
    selection = prompt_user_input
  elsif selection == 'C'
    exit
  else puts "Please enter a valid selection \"A-C\""
    prompt_user_input
  end
end

def planet_details(planet)
  @color = planet_color(planet)
  @mass_kg = planet_weight(planet)
  @distance_from_sun_km = planet_distance(planet)
  @fun_fact = planet_fun_fact(planet)
  return planet.summary
end

  def planet_color(planet)
    puts "Let's add details for #{planet}"
    puts "What color is #{planet}?"
    @color = gets.chomp
    return @color
  end

  def planet_weight(planet)
    puts "How many kg is #{planet}?"
    @mass_kg = gets.chomp
    return @mass_kg
  end

  def planet_distance(planet)
    puts "How many kilometers is #{planet} from the sun?"
    @distance_from_sun_km = gets.chomp
    return @distance_from_sun_km
  end

  def planet_fun_fact (planet)
    puts "Add a fun fact about #{planet}"
    @fun_fact = gets.chomp
    return @fun_fact
  end

 #center_of_universe.add_planet(planet)

def prompt_user_to_add_planet(center_of_universe)
    puts "What do you want to name your planet?"
    planet = gets.chomp
    new_planet = center_of_universe.add_planet(planet)
    return new_planet
end

def prompt_user_to_list_planets(center_of_universe)
    return center_of_universe.list_planets
end

def planet_name_input
  puts "What the new planet's name?"
  @name = gets.chomp
  return @name
end


def main
  display_welcome
  what_is_center_of_universe
  center_of_universe = SolarSystem.new(@star_name)
  selection = prompt_user_input
  while selection == 'A' || selection == 'B'
    user_functions_options(selection,center_of_universe)
  end
end

  #binding.pry
#   if selection.length >
#   if selection == 'A'
#     puts "What do you want to name your planet?"
#     planet = gets.chomp
#     new_planet = center_of_universe.add_planet(planet)
#         prompt_user_input
#   elsif selection == 'B'
#     puts center_of_universe.list_planets
#         prompt_user_input
#   elsif selection == 'C'
#     exit
#   else puts "Please enter a valid selection \"A-C\""
#     prompt_user_input
#   end
# end

selection = ''
star_name = ''
main

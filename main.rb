
require_relative 'planet' #load planet class
require_relative 'solar_system' #load solar_system class


def planet_details(solar_system)
  print "Please type a planet name: "
  puts solar_system.find_planet_my_name(gets.chomp).summary
end

def add_planet(solar_system) #add new planet's attributes
  print "Enter a name: "
  name = gets.chomp
  print "Enter a color: "
  color = gets.chomp
  print "Enter a mass: "
  mass = gets.chomp.to_f
  print "Enter a distance from sun: "
  distance = gets.chomp.to_f
  print "Enter a fun fact: "
  fact = gets.chomp
  planet = Planet.new(name,color,mass,distance,fact) #new instance of planet
  solar_system.add_planet(planet) #new planet is added
end

def main
  solar_system = SolarSystem.new('Sol') #create instance of SS, add all planets

  mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'is the closest planet to the sun')
  venus = Planet.new('Venus', 'reddish-brown', 4.867e34, 1.082e8, 'a day on Venus is longer than one year')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'its the only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'its named after the Roman god of war')
  jupiter = Planet.new('Jupiter', 'white, orange, brown and red', 1.898e27, 7.785e8, 'is the largest planet in the solar system')
  saturn = Planet.new('Saturn', 'yellowish-brown', 5.683e26, 1.433e9, 'has 62 confirmed moons.')
  uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'orbits the Sun lying on its side.')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.495e9, 'is the farthest planet from the Sun.')

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  input = ""
  until input == "1"
    puts "1) Exit"
    puts "2) List Planets"
    puts "3) planet details"
    puts "4) add planet"
    print "Please select an option: "
    input = gets.chomp

    if input == "2"
      puts solar_system.list_planets
    elsif input == "3"
      planet_details(solar_system)
    elsif input == "4"
      add_planet(solar_system)
    end
  end

end


main





#reuse methods shelan!!!!!

#user will use this

# mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'is the closest planet to the sun')
# venus = Planet.new('Venus', 'reddish-brown', 4.867e34, 1.082e8, 'a day on Venus is longer than one year')
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'its the only planet known to support life')
# mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'its named after the Roman god of war')
# jupiter = Planet.new('Jupiter', 'white, orange, brown and red', 1.898e27, 7.785e8, 'is the largest planet in the solar system')
# saturn = Planet.new('Saturn', 'yellowish-brown', 5.683e26, 1.433e9, 'has 62 confirmed moons.')
# uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'orbits the Sun lying on its side.')
# neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.495e9, 'is the farthest planet from the Sun.')

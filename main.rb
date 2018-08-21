require_relative 'planet.rb'

def main(name, color, mass_kg, distance_from_sun_km, fun_fact)
  instance = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  return instance
end

planet_1 = main("Mercury", "Gray", 0.330, 57.9, "Smallest planet in our Solar System")
puts "#{planet_1}"
puts "#{planet_1.name}"
puts "#{planet_1.summary}"
puts


planet_2 = main("Venus", "Light Gray", 4.87, 108.2, "Spins in an opposite direction as compared to all other planets in the Solar System")
puts "#{planet_2}"
puts "#{planet_2.name}"
puts "#{planet_2.summary}"
puts

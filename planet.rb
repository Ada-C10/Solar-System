#Wave 1
#Each instance of this class will keep track of information about a single planet.

# Load Planet into pry:
# $ pry -r ./planet.rb

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  def summary
    return "#{@name} is #{@color} in color, weights #{@mass_kg} and its located #{@distance_from_sun_km} from the sun! Did you know this planet #{@fun_fact}? "
  end
end

# mercury = Planet.new('Mercury', 'dark-grey', 3.285e23, 5.791e7, 'is the closest planet to the sun')
# venus = Planet.new('Venus', 'reddish-brown', 4.867e34, 1.082e8, 'a day on Venus is longer than one year')
# earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'its the only planet known to support life')
# mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'its named after the Roman god of war')
# jupiter = Planet.new('Jupiter', 'white, orange, brown and red', 1.898e27, 7.785e8, 'is the largest planet in the solar system')
# saturn = Planet.new('Saturn', 'yellowish-brown', 5.683e26, 1.433e9, 'has 62 confirmed moons.')
# uranus = Planet.new('Uranus', 'blue', 8.681e25, 2.871e9, 'orbits the Sun lying on its side.')
# neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.495e9, 'is the farthest planet from the Sun.')
#
# puts uranus.fun_fact

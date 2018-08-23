class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting #{@star_name}: #{@planets}"
  end

  def find_planet_by_name(planet)
    @planets.each do |p|
      if p.name.downcase == planet.downcase
        return p
      end
    end
  end

  def planet_details

    puts "What planet would you like to learn about?"
    input = gets.chomp

    output = find_planet_by_name(input)

    return output
  end

  def new_planet
  puts "Please provide some planet information."
  puts "Name:"
  name = gets.chomp.downcase
  puts "Color:"
  color = gets.chomp.downcase
  puts "Mass (kg):"
  mass = gets.chomp.downcase
  puts "Distance from sun (km):"
  distance = gets.chomp.downcase
  puts "Fun fact:"
  fun_fact = gets.chomp.downcase

  new_planet = Planet.new(name, color, mass, distance, fun_fact)
  add_planet(new_planet)

  return "Planet added!"
end

end

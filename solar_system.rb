require 'pry'
require_relative 'planet.rb'
class SolarSystem

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(new_planet)
    @planets << new_planet
  end

  def list_planets
    string = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, i|
      string += "\n#{i + 1}. #{planet.name}"
    end
    return string
  end

  def find_planet_by_name(planet_name)
    planet_name.downcase!
    planet_name.capitalize!
    @planets.each do |planet|
      if planet.name == planet_name
        return planet
      end
    end
    raise ArgumentError, "Could not find a planet named #{planet_name}."
  end

  def distance_between(planet_1, planet_2)
    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end

  def planet_details
    puts "\nWhich planet would you like to know more about?"
    user_planet = gets.chomp
    planet = self.find_planet_by_name(user_planet)
    puts "\n"+planet.summary
  end

  def user_add_planet
    puts "\nPlease enter some details about the planet you'd like to add."
    puts "Name: "
    name = gets.chomp.capitalize
    puts "Color: "
    color = gets.chomp.downcase
    puts "Mass (kg): "
    mass = gets.chomp.to_i
    puts "Distance from Sun (km): "
    dist = gets.chomp.to_i
    puts "Fun fact: "
    fact = gets.chomp.capitalize

    #new_planet = Planet.new(name, color, mass, dist, fact)
    self.add_planet(Planet.new(name, color, mass, dist, fact))
  end

  def user_distance_between
    puts "Enter the name of a planet:"
    planet_1 = gets.chomp
    planet_1 = find_planet_by_name(planet_1)
    puts "Enter the name of another planet:"
    planet_2 = gets.chomp
    planet_2 = find_planet_by_name(planet_2)
    puts "\n#{planet_1.name} and #{planet_2.name} are #{distance_between(planet_1, planet_2)} kilometers apart."
  end

end

#main.rb

require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main

  planet_venus = Planet.new('venus','pink', 6, 10009000, 'has furry animals')
  puts planet_venus.planet_summary

  planet_mars = Planet.new('mars', 'red', 6667777, 5000, 'mars has life')
  puts planet_mars.planet_summary

  planet_earth = Planet.new('earth', 'blue', 3456789, 60000000, 'earth needs to try again')
  puts planet_earth.planet_summary

  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet('earth')
  solar_system.add_planet('mars')
  solar_system.add_planet('venus')

  list = solar_system.list_planets
  puts "Planets orbiting" + " " + "#{solar_system.star_name}" + "\n" + "#{solar_system.list_planets}"

  #if find_planet_by_name(planet_name) == true

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.planet_summary

end

main

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def planet_summary
    return "#{@name}: #{@color}: #{@mass_kg}: #{@distance_from_sun_km}: #{@fun_fact}"
  end

end
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
    return @planets.join(" ")
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if @planets.include? "planet_name"
        #@planets.each do |planet|
        #if planet == planet_name
        #found_name = planet_name
      end
      return planet_name
    end
  end

end

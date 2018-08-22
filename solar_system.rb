# require 'pry'

class SolarSystem

  attr_reader :star_name, :planets

  #The constructor should take one parameter, star_name, and save it in an instance variable.
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Create a method SolarSystem#add_planet, which will take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(planet)
    @planets << planet
  end

  # Create a method SolarSystem#list_planets, which will return (not puts) a string containing a list of all the planets in the system.
  def list_planets
    # planets = %w(Mercury Venus Earth Mars Jupiter)
    list_planets = "Planets orbiting #{star_name} \n"

    @planets.each_with_index do |planet, index|
      list_planets = "#{list_planets}" + "#{index + 1}. #{planet.name}\n"
    end

    return list_planets
  end


  def find_planet_by_name
    print "What planet would you like to know more about? "
    search = gets.chomp.downcase

    ## buggy - Always treats first input as false
    until @planets.include? (search.capitalize)
      # search = gets.chomp.downcase
      puts "That is not a known planet in our system! Please try again. "
      # 1.   search = gets.chomp.downcase # repeats regardless of case
      search = gets.chomp.downcase

    @planets.each do |planet|
      if search != planet.name.downcase
        next
      elsif search == planet.name.downcase
        found_planet = planet
      end

      return found_planet
    end

    end
  end

end

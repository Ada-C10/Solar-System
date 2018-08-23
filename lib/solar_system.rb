class SolarSystem
  attr_reader :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = [] 
  end

  def add_planets(some_planet)
    @planets << some_planet
  end

  def list_planets
    sentence_array = []
    opening_sentence = "Planets orbiting the #{@star_name}: "
    sentence_array << opening_sentence
    @planets.each_with_index do | planet, index|
      listing_planets = "#{index + 1}: #{planet.name}"
      sentence_array << listing_planets
    end
    return sentence_array
  end

  def find_planet_by_name (planet_name)
    return planet_name
  end


end

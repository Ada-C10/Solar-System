class solar_system
  def initialize(star_name)
    @star_name = star_name
    @planets =[]
  end

  attr_reader :star_name, :planets

def add_planet(new_planet)
  @planet << new_planet

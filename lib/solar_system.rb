class SolarSystem
  attr_reader :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = [] # this can be created when it starts
  end

  def add_planets(some_planet)
    @planets << some_planet
  end

  def list_planets
    list_of_planets = "Planets Orbiting #{star_name}: "
    return
  end

end

class SolarSystem

  attr_reader :star_name, :planets

  #The constructor should take one parameter, star_name, and save it in an instance variable.
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Create a method SolarSystem#add_planet, which will take an instance of Planet as a parameter and add it to the list of planets.
  def add_planet(Planet)
    planets << Planet
  end

  # Create a method SolarSystem#list_planets, which will return (not puts) a string containing a list of all the planets in the system.
  def list_planets
    # Planets orbiting <star name>
    # 1.  Mercury
    # 2.  Venus
    # 3.  Earth
    # 4.  Mars
    # 5.  Jupiter
  end

end

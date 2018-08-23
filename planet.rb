class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    unless mass_kg > 0
      raise ArgumentError, "Mass of planet must be greater than 0"
    end

    unless distance_from_sun_km > 0
      raise ArgumentError, "Distance from sun must be greater than 0"
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Name of planet: #{name.upcase}\nColor: #{color}\nMass in kilograms: #{mass_kg}\nDistance from the sun in kilometers:#{distance_from_sun_km}\nFun fact: #{fun_fact}"
    # note - ruby syntax if i put them on separate lines, there are tabs in the output
    # vs using \n there are no tabs?
  end

end

# earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49e8, "Only planet known to support life")
#
# puts earth.summary
# puts earth.fun_fact
# puts earth.color = 'pink'

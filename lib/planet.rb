class Planet
  # Setting attributes to be readable
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  # Adding Constructor
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    # Adding validation for mass and distance
    if mass_kg < 0 || distance_from_the_sun_km < 0
      raise ArgumentError, "Please enter a number greater than 0."
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  def summary
    # Return a string with planet information
    return "Name: #{self.name} \nColor: #{self.color} \
    \nMass: #{self.mass_kg} \
    \nDistance from the sun: #{self.distance_from_the_sun_km} \
   \nFun Fact: #{self.fun_fact}
    "
  end
end

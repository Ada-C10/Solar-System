class Planet
  # SETTING attributes to be readable
  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  # CREATING Constructor
  def initialize(name, color, mass_kg, distance_from_the_sun_km, fun_fact)
    # ADDING validation for mass and distance to be greater than 0
    if mass_kg < 0 || distance_from_the_sun_km < 0
      raise ArgumentError, "Please enter a number greater than 0."
    end
    # ASSIGNING instance variables
    # Making name downcase then capitalize for conistency
    @name = name.downcase.capitalize
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  # METHOD to RETURN planet information
  def summary
    # RETURN a string with planet attributes
   return "Name: #{self.name.capitalize} \nColor: #{self.color} \
    \nMass: #{self.mass_kg} \
    \nDistance from the sun: #{self.distance_from_the_sun_km} \
   \nFun Fact: #{self.fun_fact}
    "
  end
end

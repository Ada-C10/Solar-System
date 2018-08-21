class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun
    @fun_fact = fun_fact
  end
  def summary
    "The planet #{@name} is the color #{@color} and weighs #{@mass_kg} kilograms.\
 #{@name} is #{@distance_from_sun_km} kilometers from the sun and interestingly, #{@fun_fact}."
  end
end
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass = mass_kg
    @distance = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name}: \nColor: #{@color} \nMass in kg: #{@mass} \nDistance from sun in kg: #{@distance} \nFun Fact about #{@name}: #{@name} is #{@fun_fact}."
  end
end

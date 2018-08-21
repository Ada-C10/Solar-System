class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    raise ArgumentError "Planet's mass must be a positive number" unless mass_kg > 0
    @mass_kg = mass_kg
    raise ArgumentError "Planet's distance from sun must be a positive number" unless distance_from_sun_km > 0
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def planet_summary
    return "Planet: #{@name} \nColor: #{@color} \nWeight: #{@mass_kg} kg \nDistance from the sun: #{@distance_from_sun_km} km \nFun Fact: #{@fun_fact}"
  end 
end

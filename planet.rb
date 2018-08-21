class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    raise ArgumentError 'Mass must be a positive numeric value' unless mass_kg.to_i > 0
    @mass_kg = mass_kg
    raise ArgumentError 'Distance must be a positive numeric value' unless distance_from_sun_km.to_i > 0
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    "#{@name} is #{@distance_from_sun_km} kilometers from the sun.  \nIt is a #{@color} planet with a mass of #{@mass_kg} kilograms. \nFun fact! #{fun_fact}"
  end
end

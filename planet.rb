class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    raise ArgumentError.new("Mass must be a numeric") unless mass_kg.class == Numeric
    raise ArgumentError.new("Mass must be number greater than zero") unless mass_kg > 0
    @mass_kg = mass_kg
    raise ArgumentError.new("Distance must be a numeric") unless distance_from_sun_km.class == Numeric 
    raise ArgumentError.new("Distance must be number greater than zero") unless distance_from_sun_km > 0
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  attr_writer :mass_kg, :distance_from_sun_km

  def summary
    return "#{@name} is #{@color}. It weighs #{@mass_kg}kg and is #{@distance_from_sun_km}km from the sun. You might be interested in knowing that it is #{@fun_fact}."
  end
end

# puts earth = Planet.new("earth", "yello", 100, 1, "super cool")
# puts earth.name
# puts earth.fun_fact

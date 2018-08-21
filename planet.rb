class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    raise ArgumentError.new("Not a valid number") if mass_kg < 0
    @mass_kg = mass_kg
    raise ArgumentError.new("Not a valid number") if distance_from_sun_km < 0
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} weighs #{@mass_kg}, is #{@color} in color, and resides #{@distance_from_sun_km} km away from the sun. Here's a fun fact: #{@fun_fact}"
  end

end

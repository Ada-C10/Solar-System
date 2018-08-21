class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def summary
    return "planet #{name} has a #{color} color, a mass of #{mass_kg}. It's #{distance_from_sun_km} away from the sun, and fun fact: #{fun_fact}"
  end

end

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
    return "#{@name} is a #{@color} planet with a mass of #{@mass} that is #{@distance}km away from the sun. Fun fact about #{@name} - #{@fun_fact}."
  end
end

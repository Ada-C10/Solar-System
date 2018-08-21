class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    while ((/\A[+-]?\d*(\.?\d+)?(e?\d+)?( ?k{1}g{1})?/.match(mass_kg.to_s) ==
      nil) || mass_kg.to_f <= 0)
      print "ERROR: Mass must be a number greater than zero.
      Enter mass in kg: "
      mass_kg = gets.chomp
    end
    @mass_kg = mass_kg.to_f
    while ((/\A[+-]?\d*(\.?\d+)?(e?\d+)?( ?k{1}g{1})?/.match(
      distance_from_sun_km.to_s) == nil) || distance_from_sun_km.to_f <= 0)
      print "ERROR: Distance must be a number greater than zero.
      Enter distance in km: "
      distance_from_sun_km = gets.chomp
    end
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name.upcase}: #{@color} in color, weighs #{@mass_kg} kg,
    located #{@distance_from_sun_km} km from the sun.
    Fun fact about #{@name.upcase}: #{@fun_fact}."
  end
end

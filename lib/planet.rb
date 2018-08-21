class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    until (mass_kg.class == Integer || mass_kg.class == Float) && mass_kg > 0
      print "Mass must be a number greater than zero: "
      mass_kg = eval(gets.chomp)
    end
    @mass_kg = mass_kg
    until (distance_from_sun_km.class == Integer ||
      distance_from_sun_km.class == Float) && distance_from_sun_km > 0
      print "Distance must be a number greater than zero: "
      distance_from_sun_km = eval(distance_from_sun_km)
    end
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name.upcase}: #{@color} in color, weighs #{@mass_kg},
    located #{@distance_from_sun_km} km from the sun.
    Fun fact about #{@name.upcase}: #{@fun_fact}."
  end
end

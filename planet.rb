# Create a class called Planet
class Planet

# instance variables should be readable from outside the class, but not writable.
attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

# Add a constructor to your Planet class.
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  # Add an instance method called summary which should return (not puts) a string containing a nicely-formatted description of the planet
  def summary
    return "#{name} is #{color} and has a mass of #{mass_kg} kilograms. Here is a fun fact about #{name}: #{fun_fact}"
  end

end

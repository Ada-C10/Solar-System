# creates a class with readable name, color, mass, distance & fun fact
# has method to print out a summary
class Planet
  #constructor
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    if mass_kg <= 0
      raise ArgumentError "Mass should be bigger than 0"
    end
    if distance_from_sun_km <= 0
      raise ArgumentError "Distance should be bigger than 0"
    end
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  #attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def name
    return @name
  end
  def color
    return @color
  end
  def mass_kg
    return @mass_kg
  end
  def distance_from_sun_km
    return @distance_from_sun_km
  end
  def fun_fact
    return @fun_fact
  end
 # returns summary
  def summary
    return "#{@name} is a planet that is #{@color} ,weighs #{@mass_kg} kg and is #{@distance_from_sun_km} km away from the sun, it is #{@fun_fact}"
  end

end

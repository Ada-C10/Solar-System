class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @fun_fact = fun_fact

    if mass_kg > 0
      @mass_kg = mass_kg
    else
      raise ArgumentError, "Mass_kg (#{mass_kg}) must be greater than 0."
    end
    
    if distance_from_sun_km > 0
      @distance_from_sun_km = distance_from_sun_km
    else
      raise ArgumentError, "distance_from_sun_km (#{distance_from_sun_km})must be greater than 0."
    end

  end

  def summary
    statement = "#{@name}:\n\t#{@name} is a #{@color} planet.\n\tIt has a mass of #{@mass_kg} kg and is located #{@distance_from_sun_km} km from the sun.\n\tFun fact: #{@fun_fact}"
    return statement
  end

end

# require './main.rb'
# require './solar_system.rb'

# Define new class Planet
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    
      raise ArgumentError.new("Mass value must be greater than zero") if mass_kg.to_i <= 0
      raise ArgumentError.new("Distance from Sun must be greater than zero") if distance_from_sun_km.to_i <= 0

      @name = name
      @color = color
      @mass_kg = mass_kg
      @distance_from_sun_km = distance_from_sun_km
      @fun_fact = fun_fact

  end

  def summary
    return "#{@name} datafile:
            Color: #{@color}
            Mass (kg): #{@mass_kg}
            Distance from the Sun (km): #{@distance_from_sun_km}
            Fun Fact: #{@fun_fact}"
  end

end

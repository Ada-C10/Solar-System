# require_relative '../lib/solar_system'

class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    if mass_kg <= 0 || distance_from_sun_km <= 0

      raise ArgumentError.new("Mass and Distance must be greater than zero.")
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary

    return "At #{@distance_from_sun_km} km from its sun, we have planet #{@name}, weighing in at #{@mass_kg} kg. If you didn't know: #{@fun_fact}, and it's #{@color}. Woooow!"
  end

end

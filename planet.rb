require "pry"

class Planet

  # attr_accessor

  attr_reader :name, :color, :mass_kg, :distance_from_sum_km, :fun_fact
  #writer to write the variable
  # attr_writer

  def initialize(name, color, mass_kg, distance_from_sum_km, fun_fact)
    @name = name
    @color = color
    @mass_kg =  mass_kg
    @distance_from_sum_km = distance_from_sum_km
    @fun_fact = fun_fact
  end

  def summary
    return "Name:#{@name} \nColor:#{@color} \nMass Kg:#{@mass_kg}\n
    Distance: #{distance_from_sum_km}\n Fun Fact:#{fun_fact}"
  end


end

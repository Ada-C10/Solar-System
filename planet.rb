require 'terminal-table'
require 'colorize'

class Planet
  attr_reader :name, :color, :mass, :distance, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass = mass_kg
      if mass_kg <= 0
        raise ArgumentError.new("Mass must be greater than 0")
      end
    @distance = distance_from_sun_km
      if distance_from_sun_km <= 0
        raise ArgumentError.new("Distance from sun must be greater than 0")
      end
    @fun_fact = fun_fact
  end
  def summary
    # return "\n    Name: #{@name}
    # Color: #{@color}
    # Mass: #{@mass}
    # Distance: #{@distance}
    # Fun_fact: #{@fun_fact}"
    # Attempt at a table:
    rows = [["Name", @name],["Color", @color], ["Mass", "#{@mass} kg"],
    ["Distance", "#{@distance} km"], ["Fun Fact", @fun_fact]]
    table = Terminal::Table.new
    table.rows = rows
    table.style = {:width => 60, :all_separators => true,
     :border_x => "-".colorize(:yellow), :border_i => "o"}
    #
    return table
  end
end

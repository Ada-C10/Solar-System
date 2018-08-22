require 'terminal-table'
require 'colorize'

class Planet
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass = mass_kg
    @distance = distance_from_sun_km
    @fun_fact = fun_fact
  end
  def summary
    return "\n    Name: #{@name}
    Color: #{@color}
    Mass: #{@mass}
    Distance: #{@distnace}
    Fun_fact: #{@fun_fact}"
    # rows = [@name, @color, @mass, @distnace, @fun_fact]
    # table = Terminal::Table.new
    # table.title = "Planet Details".colorize(:cyan)
    # table.headings = ["Name".colorize(:green), "Color".colorize(:green),
    #   "Mass".colorize(:green), "Distance".colorize(:green),
    #   "Fun fact".colorize(:green)]
    # table.rows = rows
    # table.style = {:width => 60, :all_separators => true,
    #   :border_x => "=".colorize(:red), :border_i =>
    # "="}
    #
    # puts table
  end

  attr_reader :name, :color, :mass, :distance, :fun_fact
end

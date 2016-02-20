require_relative 'lib/grid'
require_relative 'lib/navigation'

navigation = Navigation.new()

print "Enter MXN grid: "
input = gets
grid = Grid.new(input)
puts "(#{grid.rows} X #{grid.columns} matrix generated)"

loop do
  print "Enter Position and Instructions: (x for exit): "
  input = gets
  cmd = input.split()
  cmd_position = cmd.shift
  exit if cmd_position == 'x'
  cmd_instructions = cmd
  navigation.grid = grid
  navigation.set_position(cmd_position)
  navigation.set_instructions(cmd_instructions.first)
  navigation.navigate
  print "Position: "
  puts navigation.current_position
end

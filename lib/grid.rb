class Grid

  attr_accessor :rows, :columns, :coordinates

  def initialize(rows_columns)
    cmd = rows_columns.split(' ')
    grid = cmd.length == 1 ? cmd.first.split("") : cmd
    @rows = grid[0].to_i
    @columns = grid[1].to_i
    setBoundryPoints
  end

  def display_matrix
    matrix = positions.reverse.each_slice(@rows+1).to_a
    matrix.each do |m|
      puts m.join("\t")
    end
  end

  def setBoundryPoints
    @coordinates = []
    (@columns+1).times do |col|
      (@rows+1).times do |row|
        coordinate = {row: row, col: col, isBoundry: is_boundry?(row,col)}
        @coordinates.push(coordinate)
      end
    end
  end

  def is_boundry? row,col
    col == 0 || row==0 || col==@columns || row==@rows
  end

  def boundry_points
    @coordinates.select{|coordinate| coordinate[:isBoundry]}.collect{|b| "#{b[:row]} #{b[:col]}"}
  end

end

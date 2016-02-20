class Navigation

  attr_accessor :current_position, :instructions, :x, :y, :direction, :grid

  ORIENTATION = 90
  DIRECTIONS = {
    N:90,
    NE:135,
    E:180,
    ES:225,
    S:270,
    SW:315,
    W:360,
    WN:45
  }

  def move_right orientation
    degree = DIRECTIONS[@direction]==360 ? 90 : (DIRECTIONS[@direction] + orientation)
    @direction = DIRECTIONS.key(degree)
  end

  def move_left orientation
    degree = DIRECTIONS[@direction]==90 ? 360 : (DIRECTIONS[@direction] - orientation)
    @direction = DIRECTIONS.key(degree)
  end

  def move_forward step
    case @direction
    when :E
      @x += step
    when :W
      @x -= step
    when :N
      @y += step
    when :S
      @y -= step
    end
  end

  def move_backward step
    case @direction
    when :E
      @x -= step
    when :W
      @x += step
    when :N
      @y -= step
    when :S
      @y += step
    end
  end

  def navigate
    @instructions.each do |instruction|
      case instruction
      when "R"
        move_right ORIENTATION
      when "F"
        move_forward 1
      when "L"
        move_left ORIENTATION
      when "B"
        move_backward 1
      else
        "You gave me #{instruction} -- I have no idea what to do with that."
      end
    end
  end

  def set_grid(x_y)
    @grid = Grid.new(x_y)
  end

  def set_position(position)
    x, y, direction = position.split('')
    @x = x.to_i
    @y = y.to_i
    @direction = direction.to_sym
  end

  def set_instructions(instructions)
    @instructions = instructions.split('')
  end

  def current_position
    position = "#{@x} #{@y}"
    position = (@grid.boundry_points.include? position) ? [@x, @y, @direction, 'LOST'] : [@x, @y, @direction]
    position.join('')
  end

end

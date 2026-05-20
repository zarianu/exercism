class RobotSimulator
  @x : Int32
  @y : Int32
  @direction : Symbol

  property :x, :y, :direction

  COMPAS = [:north, :east, :south, :west]

  def initialize(coord : {Int32, Int32}, @direction : Symbol)
    @x = coord[0]
    @y = coord[1]
  end

  def rotate(dir : Char)
    i = COMPAS.index(@direction)
    case dir
    when 'R'
      @direction = i ? COMPAS.rotate(i + 1)[0] : @direction
    when 'L'
      @direction = i ? COMPAS.rotate(i - 1)[0] : @direction
    end
  end

  def adv
    case @direction
    when :north then @y += 1
    when :east then @x += 1
    when :west then @x -= 1
    when :south then @y -= 1
    end
  end

  def move(instructions : String)
    instructions.each_char do |c|
      case c
      when 'R', 'L'
        self.rotate(c)
      when 'A'
        self.adv
      end
    end
  end
end

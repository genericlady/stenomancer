class Actor
  attr_accessor :current_image, :x, :y, :z, :scale_x, :scale_y, :color, :mode, 
                :velocity_y, :velocity_x
  attr_reader :role, :position, :keypress

  include Abilities::Drawable

  def initialize(role: "player")
    @role = role

    @current_image = Gosu::Image.new("media/stick_figure.png")
    @scale_x = 1
    @scale_y = 1
    @color = 0xff_ffffff
    @mode = :default

    set_position
    @keypress = Keypress.new

    @velocity_x = 5
    @velocity_y = 5
  end

  def draw
    current_image.
      draw(x - current_image.width / 2, y - current_image.height / 2, z, scale_x, scale_y, color, mode)
  end

  def width
    current_image.width
  end

  def height
    current_image.height
  end

  def update
    move_north if keypress.north?
    move_east if keypress.east?
    move_south if keypress.south?
    move_west if keypress.west?
  end

  def x
    position.x
  end

  def y
    position.y
  end

  def x=(number)
    position.x = number
  end

  def y=(number)
    position.y = number
  end

  def z
    position.z
  end

  def move_north
    unless position.northern_screen_edge?(self)
      position.y -= velocity_y
    end
  end

  def move_east
    unless position.eastern_screen_edge?(self)
      position.x += velocity_x
    end
  end

  def move_south
    unless position.southern_screen_edge?(self)
      position.y += velocity_y
    end
  end

  def move_west
    unless position.western_screen_edge?(self)
      position.x -= velocity_x
    end
  end

  private
  def set_position
    x = width / 2
    y = height / 2
    z = 1
    @position = Position.new(x: x, y: y, z: z)
  end
end

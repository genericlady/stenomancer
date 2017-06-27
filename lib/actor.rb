class Actor
  attr_accessor :current_image, :x, :y, :z, :scale_x, :scale_y, :color, :mode, 
                :velocity_y, :velocity_x
  attr_reader :role

  include Abilities::Drawable

  def initialize(role: "player")
    @role = role
    @current_image = Gosu::Image.new("media/stick_figure.png")
    @scale_x = 1
    @scale_y = 1
    @color = 0xff_ffffff
    @mode = :default
    @x = width / 2
    @y = height / 2
    @z = 1
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

  def update(&block)
    yield(self)
  end

end

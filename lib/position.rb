class Position
  attr_accessor :x, :y, :z

  def initialize(x:0, y:0, z:1)
    @x = x
    @y = y
    @z = z
  end

  def update(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def northern_screen_edge?(object)
    object.y + object.height / 2 < object.height
  end

  def eastern_screen_edge?(object)
    object.x + object.width / 2 > 2400
  end

  def southern_screen_edge?(object)
    object.y + object.height / 2 > 1800
  end

  def western_screen_edge?(object)
    object.x + object.width / 2 < object.width
  end

end

class Position
  attr_accessor :x, :y, :z

  def initialize(x:0, y:0, z:1)
    @x = x
    @y = y
    @z = z
  end
end

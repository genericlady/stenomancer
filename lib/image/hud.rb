class Hud < Image
  def initialize(window, image_path)
    @image = Gosu::Image.new(window, image_path)
    @scale_x = 1
    @scale_y = 1
    @color = 0xff_ffffff
    @mode = :default
  end

  def draw(x, y)
    image.draw(x, y, z=3, scale_x, scale_y, color, mode)
  end
end

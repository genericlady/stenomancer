class Image
  attr_accessor :scale_x, :scale_y, :color, :mode, :image

  def initialize(image_path, scale={}, color: 0xff_ffffff, mode: :default )
    @image = Gosu::Image.new(image_path)
    @scale_x = scale[:x] || 1
    @scale_y = scale[:y] || 1
    @color = color
    @mode = mode
  end

  def draw(x, y, z)
    image.draw(
      x - width / 2, 
      y - height / 2, 
      z, 
      scale_x, 
      scale_y, 
      color, 
      mode)
  end

  def height
    image.height
  end

  def width
    image.width
  end

end

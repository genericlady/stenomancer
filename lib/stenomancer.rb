class Stenomancer < Gosu::Window
  def initialize
    super 2400, 1800

    # you can optionally set fullscreen
    # super(800, 600, :fullscreen => true)
    self.caption = "Stenomancer"

    @background_image = Gosu::Image.new("media/stone_floor.png", :tileable => true)
    @actor = Gosu::Image.new("media/stick_figure.png")
    @actor_width = @actor.width
    @actor_height = @actor.height
    @x = @actor_width
    @y = @actor_height
  end

  def update
  end

  def draw
    @background_image.draw(0, 0, 0)
    @actor.draw(@x - @actor_width / 2, @y - @actor_height / 2, 1)
  end
end

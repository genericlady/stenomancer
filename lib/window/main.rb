class Window::Main < Gosu::Window
  attr_reader :actor, :background_image, :hud

  def initialize(actor)
    # you can optionally set fullscreen
    # super(800, 600, :fullscreen => true)
    super 2400, 1800

    self.caption = "Stenomancer"

    @actor = actor
    @background_image = Gosu::Image.new("media/stone_floor.png", :tileable => true)
  end

  def update
    actor.update
  end

  def draw
    background_image.draw(0, 0, 0)
    actor.draw
  end

end

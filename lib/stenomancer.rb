class Stenomancer < Gosu::Window
  def initialize
    # you can optionally set fullscreen
    # super(800, 600, :fullscreen => true)
    super 2400, 1800

    self.caption = "Stenomancer"

    @background_image = Gosu::Image.new("media/stone_floor.png", :tileable => true)
    @actor = Actor.new
  end

  def update
    actor.update
  end

  def draw
    @background_image.draw(0, 0, 0)
    actor.draw
  end

  private
  attr_reader :actor

end

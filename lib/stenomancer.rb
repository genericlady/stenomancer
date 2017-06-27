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
    actor.update do |a|
      a.x += a.velocity_x
      a.y += a.velocity_y

      if a.x + a.width / 2 > 2400 || a.x - a.width / 2 < 0
        a.velocity_x *= -1 
      end

      if a.y + a.height / 2 > 1800 || a.y - a.height / 2 < 0
        a.velocity_y *= -1 
      end
    end
  end

  def draw
    @background_image.draw(0, 0, 0)
    actor.draw
  end

  private
  attr_reader :actor

end

class Stenomancer < Gosu::Window
  def initialize
    @actor = Actor.new
    @main_window = Window::Main.new(@actor)
    @hud = Hud.new(@main_window)
  end

  def run
    main_window.show
    hud.show
  end

  private
  attr_reader :actor, :main_window, :hud

end

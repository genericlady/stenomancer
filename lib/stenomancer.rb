class Stenomancer < Gosu::Window
  def initialize
    @actor = Actor.new
    @hud = Hud.new(@main_window, "media/dark_felt.png")
    @window_observers = [actor, hud]
    @main_window = Window::Main.new(window_observers)
  end

  def run
    main_window.show
    hud.show
  end

  private
  attr_reader :actor, :main_window, :hud, :window_observers

end

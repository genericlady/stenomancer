class Keypress
  def north?
    Gosu.button_down? Gosu::KB_UP
  end

  def east?
    Gosu.button_down? Gosu::KB_RIGHT
  end

  def south?
    Gosu.button_down? Gosu::KB_DOWN
  end

  def west?
    Gosu.button_down? Gosu::KB_LEFT
  end

end

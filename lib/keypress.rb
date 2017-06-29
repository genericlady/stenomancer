class Keypress
  def north?
    Gosu.button_down?(Gosu::KB_UP) || 
      Gosu.button_down?(Gosu::KB_T) &&
      Gosu.button_down?(Gosu::KB_P) &&
      Gosu.button_down?(Gosu::KB_H)
  end

  def east?
    Gosu.button_down?(Gosu::KB_RIGHT) || 
      Gosu.button_down?(Gosu::KB_E)
  end

  def south?
    Gosu.button_down?(Gosu::KB_DOWN) || 
      Gosu.button_down?(Gosu::KB_S)
  end

  def west?
    Gosu.button_down?(Gosu::KB_LEFT) || 
      Gosu.button_down?(Gosu::KB_W)
  end

end

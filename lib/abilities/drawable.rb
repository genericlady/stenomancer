module Abilities::Drawable
  def draw
    raise NoMethodError, "You must implement an instance method of draw()"
  end
end

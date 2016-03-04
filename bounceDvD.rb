require 'gosu'

class BounceDvD < Gosu::Window

  def initialize
    super(800, 600)
    @image = Gosu::Image.new('dvdVideo.png')
    @x = 30
    @y = 30
    @velocity_x = 5
    @velocity_y = 5
  end

  def draw
    @image.draw(@x, @y, 1, 0.4, 0.4)
  end

  def update
    @x += @velocity_x
    @y += @velocity_y
    if @x > 800 || @x < 0 || @x > 800 - 120
      @velocity_x *= -1
    end
    if @y > 600 || @y < 0 || @y > 600 - 120
      @velocity_y *= -1
    end
  end

end

window = BounceDvD.new
window.show

require './question'

class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def current_lives(boolean)
    boolean ? lives : @lives -= 1  # lives -= 1 won't work if no @ prepend
  end

  def dead?
    lives <= 0 ? true : false
  end
end

# caia = Player.new("Caia")
# print caia.current_lives(false)
# p caia
# caia.current_lives(false)
# p caia
# caia.current_lives(true)
# p caia
# caia.current_lives(false)
# p caia
# p caia.dead?
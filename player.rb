require './question'

class Player
  attr_reader :name
  attr_accessor :lives
  #define_method "lives-=" {|n| @lives -= n}

  def initialize(name)
    @name = name
    @lives = 3
  end


  def lose_lives  #update live lose_lives
    @lives -= 1
  end

  def dead?
    lives <= 0 #? true : false ->redunctant
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
class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def lose_lives(answer_correct?)
    answer_correct? ? lives -=0  : lives -= 1
  end

  def dead?
    lives <= 0 ? true : false
  end
end
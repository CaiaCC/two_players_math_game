require "./player"
require "./question"

class Game
  def initialize
    @player1 = Player.new("Caia")
    @player2 = Player.new("Trent")
    @players = [@player1, @player2].shuffle
  end

  def current_player
    @players.first
  end

  def answer_correct(answer)
    answer == question.correct_answer
  end

  def give_feedback(answer_correct) # in the game. take corret answer as param
    if answer_correct 
      puts "Yes! You are correct." 
    else 
      puts "Seriously? No!"
    end
    sleep 1
  end

  def update_lives
    if !check_answer
      current_player.lose_lives
  end

  def display_status
    puts "----- PLAYER STATUS -----"
    @players.each{|player| puts "#{player.name}: #{player.lives}/3" }
    sleep 1
  end

  def next_turn
    @players.rotate!
    puts "----- NEW TURN -----"
    sleep 1
  end
  
  def game_over?
    @players.select{|player| player.dead?}.count > 0
  end

  def winner
    winner = @players.find{|player| !player.dead?}
    puts "#{winner.name} wins a score of #{winner.lives}/3."
  end
  
  def play

    until(game_over?) do
      question = Question.new
      puts current_player.name + ": " + question.ask_question
      player_answer = gets.chomp.to_i
      answer_correct(player_answer)
      give_feedback(answer_correct)
      update_lives
      display_status
      next_turn
    end

    winner
  end

end


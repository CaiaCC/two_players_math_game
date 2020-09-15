require "./player"
require "./question"

class Game
	def initialize
		@player1 = Player.new("Caia")
		@player2 = Player.new("Trent")
		@players = [@player1, @player2].shuffle
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
			puts "#{@players.first.name}: "
			question = Question.new
		# Question.answer_correct?
			puts "#{question.feedback}"
			@players.first.current_lives(question.answer_correct?)
			
			display_status
			next_turn
		end

		winner
	end

end

# game = Game.new
# game.play_loop
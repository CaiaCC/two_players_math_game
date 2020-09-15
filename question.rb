class Question
  attr_reader :number1, :number2, :math_problem, :correct_answer
  attr_accessor :palyer_answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @correct_answer = number1 + number2
    # puts math_problem
    # @palyer_answer = gets.chomp.to_i
  end
  #TODO: it should not store user input just do somthing with input
  def ask_question
    "What does #{number1} plus #{number2} equal?"
  end
  
  # def answer_correct?(answer) # take answer as arg
  #   answer == correct_answer
  # end
  
  # def feedback # in the game. take corret answer as param
  #   if self.answer_correct? 
  #     puts "Yes! You are correct." 
  #   else 
  #     puts "Seriously? No!"
  #   end
  #   sleep 1
  # end
end

# Q1 = Question.new
# puts Q1.answer_correct?
# puts Q1.feedback
class Question

  attr_accessor :question, :answer

  def initialize
    @operator = @operations.sample()
    @value1 = rand(1...10)
    @value2 = rand(1...10)
    @answer = generate_answer()
  end

  def generate_answer
    (@value1 + @value2)
  end

  def ask_question
    puts "What does #{@value1} #{@operator.word} #{@value2} equal?"
  end

  def eval_answer(player_answer)
    if (player_answer === @answer)
      puts "YES! Your intelligence knows no bounds!"
      return true
    else
      puts "OOF... Here's hoping your beauty can carry your brain..."
      return false
    end
  end

end
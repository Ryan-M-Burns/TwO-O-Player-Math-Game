class Question

  attr_accessor :answer

  def initialize
    @operator = @operations.sample
    @value1 = rand(1...10)
    @value2 = rand(1...10)
    @answer = generate_answer()
  end

  def generate_answer
    eval("#{@value1} #{@operator[:operand]} #{@value2}").to_f
  end

  def generate_question
    puts "What does #{@value1} #{@operator[:word]} #{@value2} equal?"
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
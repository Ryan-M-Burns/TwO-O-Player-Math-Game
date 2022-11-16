class Game

  def initialize
    puts "Welcome challenger 1. What's your name?"
    @player1 = Player.new(gets.chomp)
    puts "Welcome challenger 2. What's your name?"
    @player2 = Player.new(gets.chomp)
    @current_player = @player1
    ask_question()
  end

  def end_game?
    if (@player1.lives === 0)
      puts "#{@player2.name} has proven their intellectual superiority over #{@player1.name}."
    elsif (@player2.lives === 0)
      puts "#{@player1.name} has proven their intellectual superiority over #{@player2.name}."
    else
      ask_question()
    end
  end
  
  def ask_question
    current_question = Question.new
    puts "#{@current_player.name}: #{current_question.generate_question}"
    answer = gets.chomp.to_f

    if (!current_question.eval_answer(answer))
      @current_player.lose_life
    end
    
    @current_player = @current_player === @player1 ? @player2 : @player1
    end_game?()
  end

end
class Game

  def initialize
    @player1 = new Player
    @player2 = new Player
    @current_player = @player1
  end

  def end_game?
    if (@player1.lives === 0)
      puts "Player 2 Wins with #{player2.lives}/3"
    elsif (@player2.lives === 0)
      puts "Player 1 Wins with #{player1.lives}/3"
    else
      ask_question()
    end
  end
  
  def ask_question
    current_question = new Question
    puts "#{@current_player}: #{current_question.ask_question}"
    answer = gets.chomp

    if (!current_question.eval_answer(answer))
      @current_player.lose_life
    end
    
    @current_player = @current_player === @player1 ? @player2 : @player1
    end_game?()
  end

end
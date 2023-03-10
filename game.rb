class Game
  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def game_over
    if @player1 == 0
      puts "Player 2 wins with a score of #{@player2}/3"
    elsif @player2 == 0
      puts "Player 1 wins with a score of #{@player1}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def update_lives(turn)
    if @turn == 1
      @player1 -= 1
    else
      @player2 -= 1
    end
    
    if @player1 == 0 || @player2 == 0
      game_over
    end
  end

  def update_turn(turn)
    if @turn == 1
      @turn = 2
    else
      @turn = 1
    end
    start
  end

  def start
    puts "P1: #{@player1}/3 vs P2: #{@player2}/3"
    question = Question.new(@turn)
    if !question.start
      update_lives(@turn)
    end
    update_turn(@turn)
  end
end
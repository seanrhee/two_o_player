class Game
  def initialize
    @turn = 1
    @player1 = 3
    @player2 = 3
  end

  def game_over
    if player1 == 0
      puts "Player 2 wins with a score of #{player2}/3"
    elsif player2 = 0
      puts "Player 1 wins with a score of #{player1}/3"
    end
    puts "----- GAME OVER -----"
  end
end
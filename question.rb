class Question
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def start
    num1 = rand(1..10)
    num2 = rand(1..10)

    puts "----- NEW TURN -----"
    puts "Player #{turn}: What is #{num1} + #{num2}?"
    print "> "

    answer = gets.chomp.to_i

    if answer == num1 + num2
      puts "Player #{turn}: YES! You are correct!"
      return true
    else
      puts "Player #{turn}: Seriously? No!"
      return false
    end
  end
end
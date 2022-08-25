require './player.rb'

class Game
  def initialize(p1, p2)
    @current_player = true
    @game_over = false
    @p1 = p1
    @p2 = p2

    puts "Welcome! Start a new game!"
    
  end

  def start()
    while @game_over == false

      if @current_player == true
        self.generate_question(@p1)
      else
        self.generate_question(@p2)
      end

      if @game_over == true
        self.game_over()
      else
        puts "---NEW TURN---"
        @current_player = !@current_player
      end
    end    
  end

  def generate_question(player)
    @num1 = rand(0..20)
    @num2 = rand(0..20)
    @answer = @num1 + @num2
    
    # puts "#{player.name}: what does #{@num1} + #{@num2} equal?"
    # puts "#{player.name}: what does #{@num1} - #{@num2} equal?"
    # puts "#{player.name}: what does #{@num1} + #{@num2} equal?"
    # puts "#{player.name}: what does #{@num1} + #{@num2} equal?"

    @input = gets.chomp

    if @input.to_i == @answer
      puts "#{player.name}: YES! You are correct!"
      puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
    else
      puts "#{player.name}: Seriously? No!"
      player.score -= 1
      puts "P1: #{@p1.score}/3 vs P2: #{@p2.score}/3"
    end

    if player.score  == 0
      @game_over = true
    end

  end

  def game_over()

    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

end




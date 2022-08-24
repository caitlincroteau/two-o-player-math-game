require './player.rb'

class Game
  def initialize(p1, p2)
    @current_player = p1
    @current_question = ""
    @game_over = 0

    puts "You've initialized a game!"
    
  end

  def start()
    while @game_over == 0
    
    @correct_answer = self.generate_question(@current_player)
    @input = gets.chomp
      if @input == @correct_answer
        puts "that's correct!"
        puts @current_player.score
      else
        puts "that's incorrect!"
        @current_player.score -= 1
        puts @current_player.score
      end

      if @current_player.score == 0
        @game_over = 1
      end

      if @game_over == 1
        self.game_over()
      else
        puts "---NEW TURN---"
      end
      #switch players here
    end    
  end

  def generate_question(player)
    puts "generating question for #{player.name}"
    puts "what is 5 + 2?"
    return "7"
  
  end

  def game_over()
    puts "GAME OVER"
  end

  # def current_player()

  # end
  # #manage current player
  # #manage current question

  # #manage input
  # def player_answer()
  #   @answer = gets.chomp()
  # end

  #output player message
  #output score

end




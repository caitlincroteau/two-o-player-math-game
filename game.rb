require './player.rb'

class Game
  def initialize(p1, p2)
    @current_player = true
    @game_over = false
    @p1 = p1
    @p2 = p2

    puts "Welcome! Start a new game!"
  end

  #run game loop until @game_over == true
  def start()
    while @game_over == false

      #run generate_question
      if @current_player == true
        self.generate_question(@p1)
      else
        self.generate_question(@p2)
      end

      #check status of @game_over
      if @game_over == true
        self.game_over()
        #need to put Player x wins with a score of y/3
      else
        #if game not over, switch current player and continue game loop to next turn
        puts "---NEW TURN---"
        @current_player = !@current_player
      end
    end    
  end

  #generate questions
  def generate_question(player)
    #create random numbers
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operators = [:+, :-, :*, :/]
    #grab a random operator
    @operator = @operators.sample()
    @answer = @num1.send(@operator, @num2)
   
    puts "#{player.name}: what does #{@num1} #{@operator} #{@num2} equal?"

    #get player answer
    @input = gets.chomp

    #check if answer is correct, adjust points accordingly
    if @input.to_i == @answer
      puts "#{player.name}: YES! You are correct!"
      puts "#{@p1.name}: #{@p1.score}/3 vs #{@p2.name}: #{@p2.score}/3"
    else
      puts "#{player.name}: Seriously? No!"
      player.score -= 1
      puts "#{@p1.name}: #{@p1.score}/3 vs #{@p2.name}: #{@p2.score}/3"
    end

    #check player score
    if player.score  == 0
      @game_over = true
    end
  end

  #run this function when the game is over (a player's score goes to 0).
  def game_over()
    if @current_player == true
      puts "Player 2 wins with a score of #{@p2.score}/3"
    else
      puts "Player 1 wins with a score of #{@p1.score}/3"
    end

    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

end




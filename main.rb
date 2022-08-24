require './player.rb'
require './game.rb'
# require './question.rb'


player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)
game.start



 
# Player, Question
# Player input
# Player, message
# score: player1.score player2.score
# NEW TURN
# puts "-----New Turn-----"

# loop through turns UNTIL one player runs out of lives. 
# Each loop, check lives of each player, if one is at zero game over
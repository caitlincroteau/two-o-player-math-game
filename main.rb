require './player.rb'
require './turn.rb'
require './question.rb'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
 
# Player, Question
# Player input
# Player, message
# score: player1.score player2.score
# NEW TURN
# puts "-----New Turn-----"
turn1 = Turn.new()

# loop through turns UNTIL one player runs out of lives. 
# Each loop, check lives of each player, if one is at zero game over
require './player.rb'
require './game.rb'
# require './question.rb'

puts "Player 1, what is your name?"
name1 = gets.chomp
player1 = Player.new(name1)
puts "Player 2, what is your name?"
name2 = gets.chomp
player2 = Player.new(name2)

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
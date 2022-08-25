require './player.rb'
require './game.rb'

#get player names and initialize players
puts "Player 1, what is your name?"
name1 = gets.chomp
player1 = Player.new(name1)
puts "Player 2, what is your name?"
name2 = gets.chomp
player2 = Player.new(name2)

#start game loop
game = Game.new(player1, player2)
game.start
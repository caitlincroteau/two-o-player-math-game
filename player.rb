class Player
  attr_accessor :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

end

#test
caitlin = Player.new("Caitlin")
puts caitlin.name
puts caitlin.score
puts caitlin.lives

caitlin.name = "cjc"
puts caitlin.name
caitlin.score += 1
puts caitlin.score
caitlin.lives -= 1
puts caitlin.lives
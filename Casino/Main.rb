require './Setting.rb'
require './Human.rb'
require './Casino.rb'

gamers = Human.new
casino = Casino.new
if checkingForThePossibilityOfAGame?(gamers.year)
	puts "Добро поожаловать"
	casino.startGame(gamers)
else
	puts "Вы не имеете права играть в азартные игры"
end
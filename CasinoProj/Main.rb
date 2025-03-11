require_relative './Class/Human.rb'
require_relative './Class/Casino.rb'

gamer = Human.new
casino = Casino.new(gamer)

if casino.checking_for_the_possibility_of_a_game?(gamer.year)
	puts "Добро поожаловать"
	casino.start_game
else
	puts "Вы не имеете права играть в азартные игры"
end

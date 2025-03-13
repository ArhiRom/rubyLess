require_relative './Class/Human.rb'
require_relative './Class/TheOneArmedBandit.rb'

gamer = Human.new
game_machine = TheOneArmedBandit.new(gamer)

if game_machine.rules.checking_for_the_possibility_of_a_game?(gamer.year)
	puts "Добро поожаловать"
	game_machine.start_game
else
	puts "Вы не имеете права играть в азартные игры"
end

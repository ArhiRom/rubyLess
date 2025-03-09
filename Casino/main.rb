# require './Setting.rb'
# require './Human.rb'
# require './Casino.rb'

# gamers = Human.new
# casino = Casino.new
# if checking_for_the_possibility_of_a_game?(gamers.year)
# 	puts "Добро поожаловать"
# 	casino.start_game(gamers.wallet)
# else
# 	puts "Вы не имеете права играть в азартные игры"
# end

require './steps'

StepProc.new.call
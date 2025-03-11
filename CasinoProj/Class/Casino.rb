require_relative "./CasinoRulse.rb"

class Casino < CasinoRulse
	def initialize(gamer)
		@gamer = gamer
		@numRoll = 3
		@multiplier = 10
		@numberOfDigits = 10
	end

	def rolling
		roll = []
		luckRoll = rand(@numberOfDigits)
		check_luck? ? @numRoll.times{ roll << luckRoll } : @numRoll.times { roll << rand(@numberOfDigits) }
		print "#{roll}\n"
		roll	
	end

	def check_roll
		roll = rolling.uniq
		roll.one? ? @gamer.autoRefill(roll.first*@multiplier) : @gamer.withdrawing(@multiplier)
	end

	def check_luck?
		@gamer.check_luck ? true : false
	end

	def start_game
		while checking_wallet?(@gamer.wallet)
			print "Хотите крутить? Y/N => "
			@gamer.yes?(gets.chomp.downcase) ? check_roll : break
		end
	end
end

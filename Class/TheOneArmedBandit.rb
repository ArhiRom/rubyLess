require_relative "./CasinoRules.rb"

class TheOneArmedBandit
	attr_reader :rules

	def initialize(gamer)
		@rules = CasinoRules.new
		@gamer = gamer
		@num_roll = 3
		@multiplier = 10
		@number_of_digits = 10
	end

	def rolling
		roll = []
		luckRoll = rand(@number_of_digits)
		rules.check_luck?(@gamer) ? @num_roll.times{ roll << luckRoll } : @num_roll.times { roll << rand(@number_of_digits) }
		print "#{roll}\n"
		roll	
	end

	def check_roll
		roll = rolling.uniq
		roll.one? ? @gamer.wallet.autoRefill(roll.first*@multiplier) : @gamer.wallet.withdrawing(@multiplier)
	end

	def start_game
		while rules.checking_wallet?(@gamer.wallet.money)
			print "Хотите крутить? Y/N => "
			@gamer.yes?(gets.chomp.downcase) ? check_roll : break
		end
	end
end

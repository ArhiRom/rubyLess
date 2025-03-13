class CasinoRules

	def checking_for_the_possibility_of_a_game?(year)
		min_years = 18
		year >= min_years ? true : false
	end

	def checking_wallet?(money)
		min_cash = 10
		money >= min_cash ? true : false
	end

	def check_luck?(gamer)
		gamer.check_luck ? true : false
	end

end
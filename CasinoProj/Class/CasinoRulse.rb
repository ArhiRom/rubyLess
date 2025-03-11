class CasinoRulse
	
	def checking_for_the_possibility_of_a_game?(year)
		year >= 18 ? true : false
	end

	def checking_wallet?(money)
		minCash = 10
		money >= minCash ? true : false
	end

end
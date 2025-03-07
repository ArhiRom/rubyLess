def yes?(otv)
	arrYes = ["y", "yes", "ye", "да", "д"]
	for i in arrYes 
		return true if otv == i
	end
	false
end

def checking_for_the_possibility_of_a_game?(year)
	year >= 18 ? true : false
end

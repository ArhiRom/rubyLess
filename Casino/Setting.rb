def yes?(otv)
	arrYes = ["y", "yes", "ye", "да", "д"]
	for i in arrYes do
		return true if otv == i
	end
	return false
end

def checkingForThePossibilityOfAGame?(year)
	return true if year >= 18
	return false
end
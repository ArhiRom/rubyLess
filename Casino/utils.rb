def yes?(otv)
	%w[y yes ye да д].include?(otv)
end

def checking_for_the_possibility_of_a_game?(year)
	year >= 18 ? true : false
end

class Casino
	def roll_nachin
		roll = []
		3.times { roll << rand(10) }
		print roll
		puts
		roll
	end

	def check_roll
		roll = roll_nachin.uniq
		roll.count == 1 ? roll[0]*10 : -10
	end


	def start_game(wallet)
		while wallet > 0
			print "Хотите крутить? Y/N => "
			if yes?(gets.chomp.downcase)
				wallet += check_roll
				puts "У вас осталось #{wallet}$"
				puts
			else
				puts "У вас осталось денег #{wallet}$"
				puts
				break
			end
		end
	end
end

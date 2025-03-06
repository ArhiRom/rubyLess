class Casino
	def rollMachin
		roll = []
		3.times do
			roll << rand(10)
		end
		print roll
		puts
		return roll
	end

	def checkRoll
		roll = rollMachin.uniq
		if roll.count == 1 
			return roll[0]*10
		else
			return -10
		end
	end

	def startGame(gamers)
		wallet = gamers.wallet
		while wallet > 0
			print "Хотите крутить? Y/N => "
			if yes?(gets.chomp.downcase)
				wallet = wallet + checkRoll
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
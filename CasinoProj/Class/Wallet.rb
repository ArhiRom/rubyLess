class Wallet

	def autoRefill(num)
		@wallet += num
		printWallet
	end

	def withdrawing(num)
		@wallet = @wallet.to_i - num.to_i
		printWallet
	end

	def printWallet
		puts "У вас осталось #{@wallet}$"
	end

end
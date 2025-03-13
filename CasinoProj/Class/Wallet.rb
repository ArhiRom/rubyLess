class Wallet
	attr_reader :money

	def initialize
		@money = 100
	end

	def autoRefill(num)
		@money += num
		printWallet
	end

	def withdrawing(num)
		@money = @money.to_i - num.to_i
		printWallet
	end

	def printWallet
		puts "У вас осталось #{@money}$"
	end

end
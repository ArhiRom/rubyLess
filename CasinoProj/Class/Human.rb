require_relative "./Wallet.rb"

class Human < Wallet
	attr_reader :year
	attr_accessor :wallet
	def initialize
		@minYears = 0
		@maxYears = 100
		@year = how_many_years.to_i
		@wallet = 100
		@luck = rand(4)
	end
	
	def check_luck
		if @luck == 0
			rand_rolling
			true
		else
			@luck = @luck - 1
			false
		end
	end

	def rand_rolling
		@luck = rand(10) if @luck == 0
	end

	
	def how_many_years
		while true
			print "Сколько вам лет => "
			if y = Integer(gets.chomp) rescue false
				return y if y > @minYears.to_i && y <= @maxYears.to_i
			else
				puts "Вы ввели не возраст"
			end	
		end
	end

	def yes?(otv)
	["y", "yes", "ye", "да", "д"].include?(otv)
	end
end

require_relative "./Wallet.rb"

class Human < Wallet
	attr_reader :year
	attr_accessor :wallet
	def initialize
		@minYears = 0
		@maxYears = 100
		@year = how_many_years.to_i
		@wallet = 100
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
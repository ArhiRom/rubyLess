require_relative "./Wallet.rb"

class Human 
	attr_reader :year, :luck, :wallet

	def initialize
		@min_years = 0
		@max_years = 100
		@year = how_many_years.to_i
		@wallet = Wallet.new
		@luck = rand(4)
		@luck_rundom = 20
	end
	
	def check_luck
		if @luck.zero?
			rand_rolling
			true
		else
			@luck = @luck - 1
			false
		end
	end

	def rand_rolling
		@luck = rand(@luck_rundom) if @luck.zero?
	end

	def how_many_years
		while true
			print "Сколько вам лет => "
			if y = Integer(gets.chomp) rescue false
				return y if y > @min_years.to_i && y <= @max_years.to_i
			else
				puts "Вы ввели не возраст"
			end	
		end
	end

	def yes?(otv)
	["y", "yes", "ye", "да", "д"].include?(otv)
	end
end
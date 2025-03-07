class Human
	attr_reader :year
	attr_accessor :wallet
	def initialize
		@year = how_many_years.to_i
		@wallet = 100
	end
	
	def how_many_years
		while true
			print "Сколько вам лет => "
			if y = Integer(gets) rescue false
				return y if y > 0 && y <= 100
			else
				puts "Вы ввели не возраст"
				puts ""
			end	
		end
	end
end

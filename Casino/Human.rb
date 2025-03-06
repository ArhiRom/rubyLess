class Human
	attr_reader :year
	attr_accessor :wallet
	def initialize
		@year = howManyYears.to_i
		@wallet = 100
	end
	
	def howManyYears
		while true
			print "Сколько вам лет => "
			if y = Integer(gets) rescue false
				if y > 0 && y <= 100
					return y
				end
			else
				puts "Вы ввели не возраст"
				puts ""
			end	
		end
	end
end
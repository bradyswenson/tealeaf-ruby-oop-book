class MyCar
	
	attr_accessor :year, :color, :model, :speed

	def initialize(y, c, m)
		self.speed = 0
		self.year = y
		self.color = c
		self.model = m
	end

	def self.milage(gallons, miles)
		puts "#{miles / gallons} mpg"
	end

	def speed_up(n)
		self.speed += n
		puts "You sped up #{n} mph"
	end

	def brake(n)
		self.speed -= n
		puts "You slowed down #{n} mph"
	end

	def current_speed
		puts self.speed
	end

	def stop
		self.speed = 0
		puts "You stopped"
	end

	def spray_paint(c)
		self.color = c
	end

	def to_s
		puts "This car is a #{self.year} #{self.color} #{self.model} going #{self.speed}mph."
	end

end

jeep = MyCar.new("1997", "Blue", "Jeep")
jeep.speed_up(20)
jeep.current_speed
jeep.speed_up(35)
jeep.current_speed
jeep.brake(22)
jeep.current_speed
jeep.stop
jeep.current_speed
jeep.spray_paint("Red")
puts jeep.color

MyCar.milage(15,250)

jeep.to_s


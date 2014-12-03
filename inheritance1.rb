module Jackable
	def can_jack?(year)
		year < 1995 ? true : false
	end
end

class Vehicle
	 attr_accessor :color
  attr_reader :model, :year

	@@vehicle_num = 0

	attr_accessor :year, :color, :model, :speed

 def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@vehicle_num += 1
  end


	def self.vehicle_num
    puts "This program has created #{@@vehicle_num} vehicles"
  end

	def self.milage(gallons, miles)
		puts "#{miles / gallons} mpg"
	end

	def speed_up(n)
		@current_speed += n
		puts "You sped up #{n} mph"
	end

	def brake(n)
		@current_speed -= n
		puts "You slowed down #{n} mph"
	end

	def current_speed
		puts @current_speed
	end

	def stop
		@current_speed = 0
		puts "You stopped"
	end

	def spray_paint(c)
		self.color = c
	end
  
  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end

end

class MyTruck < Vehicle
	NUMBER_OF_DOORS = 2

	def to_s
		puts "This truck is a #{self.year} #{self.color} #{self.model} going #{self.speed}mph."
	end

end

class MyCar < Vehicle
	include Jackable

	NUMBER_OF_DOORS = 4

	def to_s
		puts "This car is a #{self.year} #{self.color} #{self.model} going #{self.speed}mph."
	end

end

jeep = MyCar.new("1997", "Jeep", "Blue")
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

puts jeep.can_jack?(1993) ? "Jackable" : "Not jackable." 

f150 = MyTruck.new("2010", "F150", "Red")

MyCar.milage(15,250)

jeep.to_s

puts jeep.age

puts Vehicle.vehicle_num

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors



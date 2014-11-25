module Play
		def play
		puts "Let's play!"
	end 
end

class Kid
	include Play
end

Asha = Kid.new
Erick = Kid.new

Asha.play
Erick.play
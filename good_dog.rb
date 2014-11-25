# good_dog.rb

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(name)
    @name = name
  end

  def speak
    "#{name} says arf!"
  end

end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name            # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name            # => "Spartacus"
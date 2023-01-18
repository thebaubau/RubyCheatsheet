# The Safe Navigation Operator (&)
class Dog
  attr_reader :breed

  def initialize(breed)
    @breed = breed
  end

  def speak
    puts 'Woof!'
  end


end

labrador = Dog.new('labrador')
labrador&.speak
p labrador&.breed

rotweiler = nil
p rotweiler&.speak

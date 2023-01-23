class Duck
  def speak
    puts 'Quack!'
  end

  def fly
    puts 'Takes off!'
  end
end

class Skunk
  def speak
    puts 'Woof!'
  end
end

def make_noise(animal)
  animal.speak
end

def take_flight(animal)
  animal.fly
end

make_noise(Duck.new)
make_noise(Skunk.new)
take_flight(Duck.new)
take_flight(Skunk.new)

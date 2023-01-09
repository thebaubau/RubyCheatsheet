class Adder
  def initialize(value)
    @value = value
  end

  def add_one
    @value + 1
  end

  def self.[](...) = new(...)

  def to_proc = ->(_v) { add_one }
end

p Adder.new(10).add_one
p Adder[10].add_one

# Using to_proc
p (1..10).map(&Adder.new(10))
p (1..10).map(&Adder[11])

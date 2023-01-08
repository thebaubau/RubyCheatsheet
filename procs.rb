require 'JSON'

# Procs

adds_two = Proc.new { |x| x + 2 }
p adds_two.call(3)

adds_three = proc { |x| x + 3 }
p adds_three.call(2)

def some_method(a, b)
  adds_three_unless_gt_three = proc { |v|
    return v if v > 3
    v + 3
  }

  adds_three_unless_gt_three.call(a) +
  adds_three_unless_gt_three.call(b)
end

# Here the return breaks out of the method itself

p some_method(1, 1) # => 8
p some_method(5, 5) # => 5

# Methods acting like functions

raw_json = File.read('./raw_json.json')
p JSON.parse(raw_json)

p raw_json.then(&JSON.method(:parse))

p raw_json.then { JSON.parse(_1) }

adds_one = proc { |x| x + 1 }
adds_two = -> x { x + 2 }

p [1, 2, 3].map(&adds_one)
p [1, 2, 3].map(&adds_two)

# Hash

hash = { a:1, b:2, c:3, d:4 }

p %i(a b c d).map(&hash)
p hash.values
p hash.values_at(*%i(a b c d))

# Symbol

p [1, 2, 3].select(&:even?)

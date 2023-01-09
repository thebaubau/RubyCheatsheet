# Lambdas

add_one = ->(a) { a + 1 }
p add_one.call(1)


def some_method(a, b)
  adds_three_unless_gt_three = lambda { |v|
    return v if v > 3

    v + 3
  }

  adds_three_unless_gt_three.call(a) +
    adds_three_unless_gt_three.call(b)
end

p some_method(1, 1) # => 8
p some_method(5, 5) # => 10

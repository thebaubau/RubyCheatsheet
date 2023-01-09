arr = [1, 2, 3, 4]
another_arr = [1, 'a', :b]
yet_another_arr = [1, 'a', 2]

# .all?
p arr.all?(&:even?) # => false

p arr.all?(Numeric) # => true

p [].all? # => true

# .any?

p another_arr.any?(Numeric) # => true

p [].any? # => false

# .none?

p another_arr.none?(Float) # => true

p [].none? # => true

# .one? (One and only one)

p arr.one?(Float) # => false

p another_arr.one?(Symbol) # => true

p yet_another_arr.one?(Numeric) # => false

# .include? / .member?

p arr.include?(2) # => true

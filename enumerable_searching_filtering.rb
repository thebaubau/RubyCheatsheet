arr = [1, 2, 3, 4]
another_arr = [1, 'a', :b]
yet_another_arr = [1, 'a', 2]

# .find / .detect

p arr.find { |v| v == 2 } # => 2
p arr.find { |v| v == 5 } # => nil
p arr.find { -> { 6 } } # => 1 - WTH

# .find_index

p arr.find_index(4) # => 3

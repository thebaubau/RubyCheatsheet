array = [1, 2, 3, 4, 5, 6, 7, 8]
hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }

# Find

found = array.find { |x| x.between?(2, 6) }
p found
# => 2 (returns the first match of the code block)

# Select

selected_from_array = array.select(&:even?) # || array.select { |x| x.even? }
selected_from_hash = hash.select { |_k, v| v.even? }

p selected_from_array
p selected_from_hash
# => [2, 4, 6, 8]
# => {:b=>2, :d=>4, :f=>6

# Using & with a symbol

def to_proc_example_with_symbol
  [1, 2, 3, 4].select(&:even?)
end

p to_proc_example_with_symbol


# Explicit block functions

def map(list, &function)
  return list unless block_given?

  new_list = []
  list.each { |v| new_list << function.call(v) }

  new_list
end

p map([1, 2, 3]) { |v| v * 2 }


# Implicit block functions

def map_implied(list)
  return list unless block_given?

  new_list = []
  list.each { |v| new_list << yield(v) }

  new_list
end

p map_implied([3, 2, 1]) { |v| v + 1 }


# Ampersand (&) and block funtions

add_one = ->(a) { a + 1 }

p map([1, 2, 3], &add_one)


# No block given

p 'Returning original list for map method:'
p map([1, 2, 3])            # => undefined method `call' for nil:NilClass (NoMethodError) unless it's guarded

p 'Returning original list for map_implied method:'
p map_implied([1, 2, 3])    # => no block given (yield) (LocalJumpError) unless it's guarded

# Can be guarded against by returning the original list if the block is not given (see map and map_implied methods)

p [1, 2, 3].map # Returns and Enumerator

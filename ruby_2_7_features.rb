require 'JSON'

# Ruby 2.7 features:

# Ruby pattern matching (2.7 experimental feature)
# case JSON.parse(json, symbolize_names: true)
# in {name: 'Alice', children: [{name: 'Bob', age: age}]}
#   p age
# in
#   p 'Alice'
# end

# Keyword arguments
def foobar(a, key: 10)
  p [a, key]
end

# foobar(key: 5)
# => `foobar': wrong number of arguments (given 0, expected 1) (ArgumentError)

def bar(opt = {}, key: 10)
  p [opt, key]
end

bar(key: 42)

# Numbered Parameters
p [1, 2, 3].map { _1 * 2 }
# => [2, 4, 6]

# Argument Forwarding (automatically passes arguments to another method call)
def foo(...)
  bar(...)
end

# Begin / End-less ranges
p(1..)  # Endless range (1 and forever)
p(..10) # Negative infinity to 10

# Enumerable#tally
# Enumerable.filter_map
# UnboundMethod#bind_call

# Pipeline Operator
def pipeline_me
  (1..100)
    .map { |value| rand(value) }
    .sort
    .reverse
    .take(5)
    .display
end

# Method Reference Operator
# Check out the file with the same name for details

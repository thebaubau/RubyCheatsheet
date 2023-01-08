require './enumerable_intro'

# map / collect

[1, 2, 3].map { |v| v * 2 }
# => [2, 4, 6]

# The shorthand
# people.map(&:name)

hands = [
  Hand.from_str('S1, S2, S3'),
  Hand.from_str('SK, SQ'),
  Hand.from_str('SJ, SQ')
]

# hands.flat_map(&:cards)

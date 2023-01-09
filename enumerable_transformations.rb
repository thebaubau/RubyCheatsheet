require './enumerable_intro'
require 'awesome_print'

hands = [
  Hand.from_str('SA, S2, S3'),
  Hand.from_str('SK, SQ'),
  Hand.from_str('SJ, SQ')
]

# .map / .collect

[1, 2, 3].map { |v| v * 2 }
# => [2, 4, 6]

# The shorthand

ap hands.map(&:to_s)
# => [
#  [0] "S2, S3, SA",
#  [1] "SQ, SK",
#  [2] "SJ, SQ"
# ]

# .flat_map

ap hands.flat_map(&:cards).sort.map(&:to_s).join(', ')
# => "S2, S3, SJ, SQ, SQ, SK, SA"

# .filter_map

cards_in_hands = hands.flat_map(&:cards).sort

low_cards = cards_in_hands.filter_map { |card| card.to_s if card <= Card.from_str('SJ') }
ap low_cards

# => [
#     [0] "S2",
#     [1] "S3",
#     [2] "SJ"
# ]

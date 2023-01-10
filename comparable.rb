class Card
  include Comparable

  SUITS        = %w[S H D C].freeze
  RANKS        = %w[2 3 4 5 6 7 8 9 10 J Q K A].freeze
  SUITS_RANKS = SUITS.each_with_index.to_h
  RANKS_SCORES = RANKS.each_with_index.to_h

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def self.from_str(s) = new(s[0], s[1..])

  def to_s = "#{@suit}#{@rank}"

  def precedence
    [SUITS_RANKS[@suit], RANKS_SCORES[@rank]]
  end

  def <=>(other) = precedence <=> other.precedence
end

def show_hand(cards) = cards.map(&:to_s).join(', ')

cards = ('2'..'8').map { Card.new('S', _1) }.shuffle

p show_hand(cards)
p show_hand(cards.sort)
p show_hand(cards.max(2))
p show_hand(cards.minmax)
p cards.min.to_s

p Card::RANKS_SCORES
one = Card.new('S', '1')
two = Card.new('C', '2')

p one <=> two

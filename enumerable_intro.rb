require './comparable.rb'

class Hand
  include Enumerable

  attr_reader :cards

  def initialize(*cards)
    @cards = cards.sort
  end

  def self.from_str(s) = new(*s.split(/[ ,]+/).map { Card.from_str(_1) })

  def to_s = @cards.map(&:to_s).join(', ')

  def each(&fn)
    @cards.each { |card| fn.call(card) }
  end
end

royal_flush = Hand.from_str('S10, SJ, SQ, SK, SA')

p royal_flush.reject { |card| card <= Card.from_str('SQ') }.join(', ')

p royal_flush
p royal_flush.to_s


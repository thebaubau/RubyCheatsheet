# frozen_string_literal: true

# Very artistic
class Artist
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def do_artsy_stuff
    puts 'Doing artsy stuff!'
  end
end

# Painter Class
class Painter < Artist
  def initialize(instrument)
    super
    @instrument = instrument
  end

  def do_artsy_stuff
    puts 'Painting'
  end

  def self.paint_portrait
    1000.times { |brush_stoke| p "I'm at brush stroke number #{brush_stoke}'" }
    puts 'Done.'
  end
end

artist = Artist.new('Daniel')
artist.do_artsy_stuff

painter = Painter.new('Paintbrush')
painter.do_artsy_stuff
Painter.paint_portrait

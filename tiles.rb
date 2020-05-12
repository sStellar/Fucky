require "colorize"

class Map
  def initialize(size = 10, max_height = 3)
    @size = size
    @max_height = max_height
    @map = []
    @color_hash = {
      1 => :cyan,
      2 => :green,
      3 => :yellow
    }
  end
  attr_accessor :size, :max_height, :map

  def makeMap()
    @size.times do
      row = []
      @size.times do
        height = rand(@max_height)+1 # Get random number
        color =
        height = height.to_s.colorize( @color_hash[height] ).colorize( :background => @color_hash[height] ) # Convert to string, then colorise by number
        row << height
      end
      @map << row
    end
    return @map
  end

  def printMap()
    @size.times do |n|
      @size.times do |m|
        print @map[n][m]
      end
      print "\n"
    end
  end
end

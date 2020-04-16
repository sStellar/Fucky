require "colorize"

map_width = 10 # map will be map_w^2 in size
mines = 10
map = []
mines_coords = []

map_width.times do
  temp_arr = []
  map_width.times do
    temp_arr << "#"
  end
  map << temp_arr
end

index = 0
mines.times do
  temp_coords = [rand(0...map_width),rand(0...map_width)]
  mines_coords << temp_coords
  print "#{mines_coords[index]}\n"
  index += 1
end

i = 0
while i < mines
  map[(mines_coords[i][0])][(mines_coords[i][1])] = "X"
  i += 1
end

map.each do |row|
  row.each do |point|
    if point == "X"
      print "#{point.colorize(:red)} "
    else
      print "#{point.colorize(:light_blue)} "
    end
  end
  print "\n"
end

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

i3 = 0
mines.times do
  temp_coords = [rand(0...map_width),rand(0...map_width)]
  mines_coords << temp_coords
  print "#{mines_coords[i3]}\n"
  i3 += 1
end

print mines_coords
print "\n"
i = 0
while i < mines
  map[mines_coords[i][0]][mines_coords[i][1]] = "X"
  print "#{map[i]}\n"
  i += 1
end

a = [1,2,3,4,5,6,7,8,9,10]

a.each do |element|
  puts element
end

h = {"ett"=>1, "tva"=>2}

h.each do |key, value|
  puts key
  puts value
end

file_inv = {}
files = Dir.glob("**/*")
files.each do |file|
  file_inv[file] = File.mtime(file)
end

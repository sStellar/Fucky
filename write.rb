class String
  def write(spd)
    str = self
    i = 0
    while i < str.length
      print str[i]
      sleep (spd)
      i += 1
    end
    print "\n"
  end
end

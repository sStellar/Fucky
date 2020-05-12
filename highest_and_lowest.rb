# My's progs fun ass hehe
=begin
highest and lowest
E/C-nivå
Skriv ett program som ber användaren skriva in ett heltal och trycka på ENTER.
Detta ska fortsätta fram till att användaren skriver "q".
Efter varje gång användaren har skrivit in ett heltal ska programmet skriva ut på skärmen vilket som i nuläget är det största heltalet användaren har skrivit in,
samt vilket som är det minsta heltalet användaren har skrivit in.
=end

highest = -1000000000000000000000
lowest = 1000000000000000000000
puts "Input integer, highest and lowest inputs are shown. Any inputs with characters will become 0 will only be what was before the characters"
while true
  input = gets.chomp
  if input == "q"
    break
  end
  input = input.to_i
  if input > highest
    highest = input
  end
  if input < lowest
    lowest = input
  end
 puts "Highest: #{highest}"
 puts "Lowest: #{lowest}"
end

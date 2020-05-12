#2020-04-21, sum of user input
sum = 0
number = 0

puts "We will output the sum of your inputs!\n Enter: END when done"

while number != "END"
    while !number.is_a?(Integer) && !number.is_a?(Float)
        puts "this variable is not an integer or float"
        puts "replace with integer/float"
        number = gets.to_f
    end
    sum += number.to_f

end
puts "Sum: #{sum}"

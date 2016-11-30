
puts "Hello, please tell me your name."
name = gets.chomp
puts "What would you like to add to our Time Capsule? If done, type FINISHED."
item = gets.chomp
time_capsule = [ ]
amount = [ ]

while item != "FINISHED"
  puts "How many of those items would you like to add?"
  number = gets.chomp
  time_capsule << item
  puts "Enter another item or FINISHED."
  item = gets.chomp
  amount << number.to_i
end

if item == "FINISHED" && time_capsule == [ ]
    puts "#{name}, your Time Capsule is empty."
  elsif item == "FINISHED"
    puts "#{name}, thanks for trying our Time Capsule. Here is a list of items in your time capsule!:\n\n"
    time_capsule.each_with_index do |item, i|
      puts "* #{item} (#{amount[i]})"
  end
end

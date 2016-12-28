puts "Welcom to the Leap Year finder! :)"

print "What year would you like to start at? "
starting_year = gets.chomp.to_i

print "What year would you like to end at? "
ending_year   = gets.chomp.to_i

#puts "The leap years from #{starting_year} to #{ending_year} include:"

#year_index = starting_year

# while year_index <= ending_year
#   if year_index % 4 == 0
#     if year_index % 100 != 0 || year_index % 400 == 0
#       puts year_index
#     end
#   end

#   year_index += 1
# end

# # # with .each method: 
(starting_year..ending_year) .each do |year|
  next if year%4 != 0
  next if year%100 == 0 && year_index%400 != 0
  puts year
end

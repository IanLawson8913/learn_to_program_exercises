# deaf grandma

puts "Dad: Talk to you grandmother, she's lonely."

bye_count = 0

while true
  say_to_grandma = gets.chomp

  if say_to_grandma == "BYE"
    puts "Have I ever told you the story about how I met your grandfather?"
    bye_count += 1
  elsif say_to_grandma == say_to_grandma.upcase
    puts "NOT SINCE #{rand(1959...1986)}!...Uh, where am I?"
  else
    puts "HUH!? SPEAK UP SONNY!"
  end
  break if bye_count >= 3
end

puts "Bye sweetie!"
#################
#DEAF GRANNY
#################

puts "Deary, why don't you say hi to your Grandma?"
BYE_counter = 0

while BYE_counter != 3

  input = gets.chomp

  puts (input != input.upcase ?  'HUH?! SPEAK UP, SONNY!' : "NO, NOT SINCE #{rand(1930..1950)}!")

  if input == 'BYE'
    BYE_counter += 1
  else
    BYE_counter = 0
  end
end

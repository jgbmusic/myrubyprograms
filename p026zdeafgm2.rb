#################
#DEAF GRANNY
#################

puts "Deary, why don't you say hi to your Grandma?"
bye_counter = 0

until bye_counter == 3

  input = gets.chomp

  puts (input != input.upcase ?  'HUH?! SPEAK UP, SONNY!' : "NO, NOT SINCE #{rand(1930..1950)}!")

  input == 'BYE' ? bye_counter +=1 : bye_counter = 0

end

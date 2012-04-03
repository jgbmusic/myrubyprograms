#################
#DEAF GRANNY###
################

puts "Deary, why don't you say hi to your Grandma?"
input = gets.chomp

while input != "BYE"
  puts (input != input.upcase ?  'HUH?! SPEAK UP, SONNY!' : "NO, NOT SINCE #{rand(1930..1950)}!")
  input = gets.chomp
end

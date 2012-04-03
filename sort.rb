##############
#Array Reverser#
##############

puts "Type a series of words, each followed by <enter>.  When done, type 'exit,' followed by <enter>."
STDOUT.flush
input = 0
list = Array.new
list_index = 0

while input != "exit"
  input = gets.chomp
  if input != "exit" 
    list[list_index] = input
    list_index += 1
  end
end

puts "Reversed List:\n"
puts list.reverse

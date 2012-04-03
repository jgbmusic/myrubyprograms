original = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

string_list = original.split("\n")

string_list.with_index(0) do |index, line|
  puts "Line %d: %s" % [index + 1, line]
end
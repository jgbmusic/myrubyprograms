collection = [12, 23, 456, 123, 4579]

collection.each do |x|
  puts "#{x} is #{x%2 == 0 ? 'even' : 'odd'}"
end



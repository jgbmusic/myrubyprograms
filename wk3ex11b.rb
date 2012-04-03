collection = [12, 23, 456, 123, 4579]

def even?(num)
  num%2 ==0
end

collection.each do |x|
  puts "#{x} is #{even?(x) ? 'even' : 'odd'}"
end

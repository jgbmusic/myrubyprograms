def try 
if block_given? 
yield 
else 
puts "no block" 
end 
end 
try do puts "hello" end

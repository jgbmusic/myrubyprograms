s = 'key=value'
=begin
a = s.split("=")
s1 = a[0]
s2 = a[1]
puts "s1 = #{s1}"
puts "s2 = #{s2}"
=end
s1, s2 = s.split('=', 3)

puts "s1 = #{s1}"
puts "s2 = #{s2}"

=begin
doctest:  fizzbuzz(3) will return 'fizz'
>> fizzbuzz(3)
=> 'fizz'
doctest:  fizzbuzz(5) will return 'buzz'
>> fizzbuzz(5)
=> 'buzz'
doctest: fizzbuzz(15) will return 'fizzbuzz'
>> fizzbuzz(15)
=> 'fizzbuzz'
doctest: fizzbuzz(1) will return 1
>> fizzbuzz(1)
=> 1
=end


def fizzbuzz(number)
  result = ''
  result << 'fizz' if number % 3 == 0
  result << 'buzz' if number % 5 == 0
  result.empty? ? number : result
end

(-15..15).each do |number|
  puts fizzbuzz(number)
end


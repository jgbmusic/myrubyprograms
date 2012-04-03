def fizz_buzz
  i = (1..100)
  fizzbuzz_string = ""
  i.each do |num|

    if (num % 3 == 0)
      num % 5 == 0 ? fizzbuzz_string &lt;&lt; "FizzBuzz\n" : fizzbuzz_string &lt;&lt; "Buzz\n"

    elsif (num % 3 == 0)
      fizzbuzz_string &lt;&lt; "Fizz\n"

    else
      fizzbuzz_string &lt;&lt; "#{num}\n"
    end
  end
fizzbuzz_string
end

puts fizz_buzz

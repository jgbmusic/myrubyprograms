#=======================================
def fizz_buzz
  i = (1..100)
  fizzbuzz_string = ""
  i.each do |num|
    if (num % 3 != 0 || num % 5 != 0)
      
      fizzbuzz_string << "#{num}\n"
    elsif (num % 3 == 0)
      fizzbuzz_string << "Fizz\n"
    elsif (num % 5 == 0) 
      fizzbuzz_string << "Buzz\n"
    else
      fizzbuzz_string << "FizzBuzz\n"
    end
  end
  fizzbuzz_string  
end

puts fizz_buzz
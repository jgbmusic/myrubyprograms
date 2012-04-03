=begin
doctest:  I have a method named hello
>> hello
=> "Hello World!"
doctest: hello "James" returns "Hello James!"
>> hello 'James'
=> "Hello James!"
=end

def hello(name="World")
  "Hello #{name}!" 
end

def leap_year? (test_this_year)
  test_this_year %4 == 0 && test_this_year %100 != 0 || test_this_year %400 == 0
end 

puts "What year shall we test?" 
STDOUT.flush  
year = gets.to_i

minutes = (leap_year?(year) ? 366 : 365) * 24 * 60

puts "There are #{minutes} minutes in the year #{year}."

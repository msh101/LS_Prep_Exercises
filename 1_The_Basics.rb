#Exercise 1
#Add two strings together that, when concatenated,
#return your first and last name as your full name in one string.

puts "Michelle" + " Huang"

#Exercise 2
#Use the modulo operator, division, or a combination of both to take a 4 digit number and
#find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

9876 / 1000 #ruby rounds down and gives whole number, not float

9876 % 1000 / 100 # % gives the remainder. divide by 100

9876 % 1000 % 100 / 10

9876 % 1000 % 100 % 10

#Exercise 3
#
=begin
Write a program that uses a hash to store a list of movie titles with the year they came out.
Then use the puts command to make your program print out the year of each movie to the screen.
The output for your program should look something like this.
=end

films = {:Pans_Labyrinth => "2006", :Memento => "2000", :Shape_of_Water => "2017"}
puts films[:Pans_Labyrinth]
puts films[:Memento]
puts films[:Shape_of_Water]

#exercise 4
#Use the dates from the previous example and store them in an array. 
#Then make your program output the same thing as exercise 3.

dates = [2006, 2000, 2017]
puts dates

#OR:
dates = [2006, 2000, 2017]
puts dates[0]
puts dates[1]
puts dates[2]

#exercise 5
#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#exercise 6
#Write a program that calculates the squares of 3 float numbers of your
#choosing and outputs the result to the screen.

puts 3.5 ** 2
puts 3.44 ** 2
puts 77.77 ** 2

#exercise 7
#What does the following error message tell you?
#SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

#It tells you there is a syntax error -- there is a ) where there should be a }
#There should be a closing bracket somewhere.

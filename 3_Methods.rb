#exercise 1
#Write a program that prints a greeting message. This program should contain a method called greeting
#that takes a name as its parameter and returns a string.

def greeting(person)
  puts "Hello, " + person
end

puts greeting("John")


#exercise 2
#What do the following expressions evaluate to?
=begin
1. x = 2
=> 2. variable x is now saved as 2

2. puts x = 2
=> nil

3. p name = "Joe"
=> "Joe"

4. four = "four"
=> "four"

5. print something = "nothing"
=> nil

=end




#exercise 3
#Write a program that includes a method called multiply that takes two
#arguments and returns the product of the two numbers.

def method(x, y)
  x * y
end

method(3, 4)

#exercise 4
#What will the following code print to the screen?

def scream(words)
words = words + "!!!!"
return #this makes the program return nothing.. because it has nothing next to the return method
puts words
end

scream("Yippeee")

#prediction: Yippeee!!!!
#was wrong.  To edit it to make it print something, take the return line out.


#exercise 5
#1) Edit the method definition in exercise #4 so that it does print words on the screen.

def scream(words)
  words = words + "!!!!"
  puts words
  end
scream("Yippeee")

#2) What does it return now?
#Yippeee!!!!

#exercise 6
#What does the following error message tell you?
#
=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
=end

#It tells you that you need to check what you put between () for the calculate_product method
#requires put 2 arguments, but only put 1

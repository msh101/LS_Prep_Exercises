#exercise 1
#Write a program called name.rb that asks the user to type in their name and then prints out a 
#greeting message with their name included.

#name.rb

puts "What is your name?"
name = gets.chomp
puts "Hi, #{name}!"


#exercise 2
# Write a program called age.rb that asks a user how old they are and then tells them
#how old they will be in 10, 20, 30 and 40 years.

#ask for age
#save age as variable
#expressions for calc age in 10, 20, 30, 40 years
#puts for telling user the age

puts "How old are you?"
age = gets.chomp.to_i

puts "In 10 years, you will be "
puts age + 10
puts "In 20 years, you will be "
puts age + 20
puts "In 30 years, you will be "
puts age + 30
puts "In 40 years, you will be "
puts age + 40

#exercise 3
#name.rb
# print name of user 10 times
# ask for user name
#save as variable
#.times method, action is to print the name

puts "What is your name?"
name = gets.chomp
10.times { puts name }

#exercise 4
#Modify name.rb again so that it first asks the user for their first name, saves it into a variable,
#and then does the same for the last name. Then outputs their full name all at once.

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Your name is: " + first_name + " " + last_name

#exercise 5
#
=begin
Look at the following programs...

x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  z = y
end
puts z

What does x print to the screen in each case? Do they both give errors? Are the errors different? Why

  1st scenario: puts 3
  2nd scenario: puts 3? ... Wrong. Error. ( because the variable was inside the .times block .. can't ref)

=end

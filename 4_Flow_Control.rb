#exercise 1
#Write down whether the following expressions return true or false.
#Then type the expressions into irb to see the results.
#
=begin

1. (32 * 4) >= 129  false `correct`
2. false != !true false `correct`
3. true == 4  false `correct`
4. false == (847 == '847')  true  `correct`
5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  `true because one is true`  `correct`

=end



#exercise 2

#Write a method that takes a string as argument. The method should return a new,
#all-caps version of the string, only if the string is longer than 10 characters.
#Example: change "hello world" to "HELLO WORLD".

#def method("string")
#if s_length > 10, else
#.upcase

def caps(string)
  if string.length > 10
    puts string.upcase
  else
    puts "This cannot be changed."
  end
end

caps("tester")


#exercise 3
#Write a program that takes a number from the user between 0 and 100 and reports back
#whether the number is between 0 and 50, 51 and 100, or above 100.

#gets.chomp --- save user's input in var. convert to int
#when var >= 0 && var <= 50
#when var >= 51 && var <= 100
#when var > 100

puts "Give me a number! any number: "
num = gets.chomp.to_i
case num
when num >=0 && num <= 50
  puts "Your number is between 0 and 50"
when num >= 51 && num <= 100
  puts "your number is between 51 and 100"
when num > 100
  puts "your number is over 100"
else
  puts "is this even a number?"
end

#answer: How come you can just put the max? not the min?
#oh. because the program goes line by line ... so write from
#smallest to largest value, and the program will  cancel out the mins
if number < 0
  puts "You can't enter a negative number!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 51 and 100"
else
  puts "#{number} is above 100"
end

#rewrite:
puts "Give me a number"
num = gets.chomp.to_i

if num < 0
  puts "Is that a number?"
elsif num < 50
  puts "Your number is between 0 and 50"
elsif num < 100
  puts "Your number is between 51 and 100"
elsif num > 100
  puts "You number is over 100"
else
  puts "did you put a number?"
end


#exercise 4
#What will each block of code below print to the screen? Write your answer on a piece of paper or in a
#text editor and then run each block of code to see if you were correct.

'4' == 4 ? puts("TRUE") : puts("FALSE") # will puts "FALSE"
# false     
###########
x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
    #     6 / 2 = 3        8 - 2 - 3 = 3 TRUE
     puts "Did you get it right?"
   else
     puts "Did you?"
   end
#will puts "did you get it right?"

#############
y = 9
   x = 10
   if (x + 1) <= (y)
    #  11         9       false
     puts "Alright."
   elsif (x + 1) >= (y)
    #     11          9   true .. program will stop here
     puts "Alright now!"
   elsif (y + 1) == x     
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end

# will puts "Alright now!"


#exercise 5

def num_method(a)
  case
  when a < 0
    puts "No negative numbers!"
  when a <= 50
    puts "This is between 0 and 50"
  when a <= 100
    puts "This is between 51 and 100"
  else
    puts "This is over 100"
  end
end

puts num_method(220)

#exercise 6
# there is an 'end' missing at the end.
#add end to fix it

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end
equal_to_four(5)

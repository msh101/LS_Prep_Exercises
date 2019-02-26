#exercise 1
#What does the each method in the following program return after it is finished executing?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#it returns the array x unchanged, because we didn't modify the array

#exercise 2
#Write a while loop that takes input from the user, performs an action,
#and only stops when the user types "STOP". Each loop can get info from the user.

#get input
#puts the word. continues to puts until user types STOP


puts "Give me a word"
input = gets.chomp

while input != "STOP" do
  puts "type STOP to stop this loop."
  input = gets.chomp
end


#exercise 3
# Use the each_with_index method to iterate through an array of your creation that
#prints each index and value of the array.

array = [55, 23, 44, 66]
array.each_with_index {|element, index| puts "#{index + 1}. #{element}"}

#exercise 4
#Write a method that counts down to zero using recursion.

#def method
#accept number as argument
#puts all numbers until 0
# a range as variable..

def countdown(x)
  until x < 0
  puts x
  x -= 1
  end
end
countdown(10)
countdown(20)


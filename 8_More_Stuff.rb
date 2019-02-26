#exercise 1
#program that checks if the sequence of chars "lab" exists in the following strings
#if exists, print the word

#laboratory, experiment, pans labyrinth, elaborate, polar bear

#can store strings in an array
#iterate over the array
#for each, check if lab exists, is included .. if includes, then print. else, no print
#if exists, puts

words = ['laboratory', 'experiment', 'pans labyrinth', 'elaborate', 'polar bear']

words.each do |w|
  if w.include?("lab")
    puts w
  else
    puts "no match"
  end
end

#exercise 2
#What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
#print nothing to screen, because no print command is written
#return error, because the block is not actually being called.


#exercise 3
#What is exception handling and what problem does it solve?
#exception handling allows the program to continue if there is an unforeseen error ..

#exercise 4

#rewrite exercise 2

def execute(&nameofblock)
  nameofblock.call
end

execute do
  puts "this is a test block"
end


#exercise 5
#
=begin
Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'


There should be 1 argument, but there are none.  The & sign needs to be placed "&block"
so that the block can be passed as a parameter


=end


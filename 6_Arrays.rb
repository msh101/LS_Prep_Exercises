#exercise 1
#Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
magic_number = 3

if arr.include?(magic_number)
  puts "Yes, this array does include #{magic_number}"
end


#exercise 2
#What will the following programs return? What is value of arr after each?

1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)
#easier to figure out using whiteboard / writing it out
# ["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]
# deletes the 1 from 1st element
#arr = ["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]


2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

# ["b", [1, 2, 3]], ["a", [1, 2, 3]]
#deletes the last element of the first...
#["b"], ["a", [1, 2, 3]]



#exercise 3
#How do you return the word "example" from the following array?

  arr = [["test", "hello", "world"],["example", "mem"]]

# guess 1:  arr[0][1] `wrong`
#guess 2: arr[0, 1] `wrong`
#guess 3: arr.last.first  `correct`




#exercise 4
#What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)
#=> 3

2. arr.index[5]
#=> error .. needs parentheses

3. arr[5]
#=> 8


#exercise 5
#What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] #=>e
b = string[11] #=>A
c = string[19] #=> nil (not enough chars)



#exercise 6
#
=begin
You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...and get the following error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?
a hash needs to be made in order to save margaret as a key, and jody as the value

=end
#edited:
names = Hash.new
names['margaret'] = 'jody'
names['bob'] = 'bob'
names['joe'] = 'joe'
names['susan'] = 'susan'

#so this solution I did modifies the array using strings as the index... 
#arrays are indexed by integers, so another way to approach this is to use the natural integer index

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
#now, this changes the name 'margaret' to 'jody'
#using the index number
#instead of converting to a string index system.


#exercise 7

#iterates over an array
#builds new array : each item +2 of original array
#p both arrays

#make array of integers
#make new empty array
#method .each ... x +2
#push the integers to thenew array (within the each method?)
#p

arr = [11, 12, 13, 14, 15, 16]
new_arr = []

arr.each do |x|
  new_arr.push(x + 2)
end

p arr
p new_arr

##### other solution 
arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr


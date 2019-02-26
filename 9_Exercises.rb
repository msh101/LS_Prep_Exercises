#Exercise 1
#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

#array = ...given
#method .each --> print x

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |x|
  puts x
end

#one-line version:
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each { |x| puts x }

#Exercise 2  -- Same as above, but only print out values greater than 5.
# array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#.each method to iterate
# if x > 5, puts

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |x|
  if x > 5
    puts x
  end
end

#one line
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each { |x| puts x if x > 5 }

#Exercise 3

#Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

#state the array
#array.select ... 
#if x % 2 == 1, put into new array
#OR: use .odd?

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.select {|x| x.odd? }

#using modulo
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.select { |x| x % 2 == 1 }

#Append "11" to the end of the original array. Prepend "0" to the beginning.
#use .insert(0, 0)
#use .push for 11
#use .unshift for beginning

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.push(11)
array.unshift(0)

p array

#Exercise 5 - get rid of 11 and append 3
#use array.delete(11) --- this removes 11 no matter where it is
#use .pop to delete integer at end of array
#use array.push(3)

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.delete(11)
array.push(3)

#exercise 6 - Get rid of duplicates without specifically removing any one value.
#use .uniq  -- does not modify original array
#.uniq! -- modifies original array


array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
unique_array = array.uniq

#exercise 7
#What's the major difference between an Array and a Hash?
#An array stores data using integers as indexes .. 0, 1, 2,....
#A hash stores data using strings as indexes .. key/value pairs

#exercise 8
#Create a Hash using both Ruby syntax styles.

new_hash = Hash.new
new_hash[:symbol] = "value"

new_hash_1 = {
  key: "value",  #DON'T FORGET THE COMMA!!!
  key2: "value2"}

new_hash_2 = {"symbol" => "value"}

#exercise 9
#Suppose you have a hash h = {a:1, b:2, c:3, d:4}

#1. Get the value of key `:b`.
h[:b]

#2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
#3. Remove all key:value pairs whose value is less than 3.5
#use .delete_if

h.delete_if {|key, value| value < 3.5 }

#exercise 10
#Can hash values be arrays? Can you have an array of hashes? (give examples)
h = {key: [1, 2, 3]}
#yes.
i = {key1: [4, 5, 6]}

a = [h, i]

#yes.  a is an array of hashes h and i

#exercise 11
#Look at several Rails/Ruby online API sources and say which one you like best and why.

#exercise 12
#Given the following data structures. Write a program that moves 
#the information from the array into the empty hash that applies to the correct person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#Joe smith is the key, the array is the value.
#find method that moves the entire array into the value of the correct key
#or, use array as reference and store new key value pairs

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

#exercise 13
#Using the hash you created from the previous exercise,
#demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][0][0] #guess: wrong
contacts["Joe Smith"][0, 0] #guess: wrong
contacts["Joe Smith"][:email] #correct

contacts["Sally Johnson"][:phone]

puts "Joe's email is: #{contacts["Joe Smith"][:email] }"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#exercise 14
#In exercise 12, we manually set the contacts hash values one by one. 
#Now, programmatically loop or iterate over the contacts hash from exercise 12,
#and populate the associated data from the contact_data array.
#Hint: you will probably need to iterate over ([:email, :address, :phone]),
#and some helpful methods might be the Array shift and first methods.

#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
#contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
#contacts = {"Joe Smith" => {}}
#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#in contact_data arrays...
#array 0 = joe
#access contact_data[0] |info| .each 
#array 1 = sally

joe_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts2 = {"Joe Smith" => {}, "Sally Johnson" => {}}

joe_data.shift(3) #can I use this in the hash? to iterate
#for x in contact_data

test_data = ["a", "b", "c"]
test_name = {"michelle" => {}}
test_field = [:symbol1, :symbol2, :symbol3]

test_name.each do |name, hash|
  test_field.each do |field|
    hash[test_field] = test_data.shift
  end
end

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

contact_data = ["shell@yahoo.com", "999 wright st.", "222-909-9998"]
contacts = {"Michelle Huang" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
   hash[field] = contact_data.shift
  end
end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

#exercise 15
#Use Ruby's Array method delete_if and String method start_with?
#to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") }

#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

#state the array again
# use conditional || 

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?("s") || word.start_with?("w")}

#OR

arr.delete_if {|word| word.start_with?("s", "w")}

#exercise 16
#take this array and turn it into a new array that consists of strings containing one word.
#(ex. ["white snow", etc...] → ["white", "snow", etc...]. 
#Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

#for each element in array
#iterate over array
#split the word. split the string.  Can I use split in iteration? (yes)
#set this equal to a new array so I can flatten it
#do I need to use flatten? (yes)


a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
new_a = a.map do |word|
  word.to_str.split(" ")
end
p new_a.flatten

#OR, can use the same variable & reassign on each subsequent line

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |word| word.split }
a = a.flatten
p a

#exercise 17 -- what will this program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#the hashes have the same items, but in diff order & slightly diff syntax...
#I think program won't recognize they are the same
#WRONG: the program did recognize they are the same.



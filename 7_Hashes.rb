#exercise 1

family = {uncles: ["bob", "steve", "joe"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"] }

immediate_family = family.select do |relation, name|
  relation == :sisters || relation == :brothers
end

arr = immediate_family.values.flatten
p arr


#exercise 2


h1 = {key1: "value 1", key2: "value 2", key3: "value 3"}
h2 = {dance1: "bachata", dance2: "kizomba", dance3: "zouk"}

new_hash = h2.merge(h1) #must create a new variable and call the new variable in order to display the merged hash

h1.merge!(h2)

h1 #now, calling h1 shows the merged hash.  The original hash was modified.
#h2 remains unchanged.
#the hash that was appeneded with .merge! is the one that gets changed.


#exercise 3

dances = {salsa: 'patterns', bachata: 'feelings', zouk: 'surrender', kizomba: 'not_sure_yet'}
all_keys = dances.each_key { |key| puts key }
all_values = dances.each_value { |value| puts value }
all_pairs = dances.each_pair { |key, value| puts "What it means to dance #{key}... '#{value}' ...."}

#or
all_pairs = dances.each { |key, value| puts "#{key} #{value}" }


#exercise 4

#Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name] #my guess
#correct 



#exercise 5

#What method could you use to find out if a Hash
#contains a specific value in it? Write a program to demonstrate this use.

hash.has_value?(integer or string)

dances = {salsa: 'patterns', bachata: 'feelings', zouk: 'surrender', kizomba: 'not_sure_yet'}

dances.has_value?('patterns') # => true
dances.has_value?('love') #=> false

if dances.has_value?('patterns')
  puts "Yes, got it!"
else
  puts "Nope."
end




#exercise 6

=begin
  Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

          Write a program that prints out groups of words that are anagrams.

Using my brain ... these groups should be formed:

demo, dome, mode
none, neon
tied, diet, tide, edit
evil, live, veil, vile
fowl, wolf, flow

I can set up a hash 'anagrams' and make each key equal to several values (all the anagrams)
values should be listed in an array
then print...

or i could be complicated and make the program analyze each word to see which group to sort it into.
=end

anagrams = { group1: ["demo", "dome", "mode"],
  group2: ["neon", "none"],
  group3: ["tied", "diet", "tide", "edit"],
  group4: ["evil", "live", "veil", "vile"],
  group5: ["fowl", "wolf", "flow"]
 }
p anagrams[:group1]
p anagrams [:group2]

## solution

result = {}

words.each do |word|
key = word.split('').sort.join
if result.has_key?(key)
result[key].push(word)
else
result[key] = [word]
end
end

result.each_value do |v|
puts "------"
p v
end

##Doing it over on my own

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
'flow', 'neon']

#create new hash to receive keys and values
#iterate over the array
#concept: use 1 word of each anagram as the 'key' and set value as array of all anagrams
#so: sort letters of each word alphabetically to find the ones that all have same letters
#the first one is used as key.. if key exists, push the word into the value array
#otherwise, create new key with the sorted word.
#the words must be sorted first, so we can use the first word as the key reliably.

result = {}

words.each do |word|
sorted_word = word.split('').sort.join
if result.has_key?(sorted_word)
result[sorted_word].push(word)
else
result[sorted_word] = [word]
end
end
#so the key is not necessarily one of the words in the original array -- 
#it is simply used as a key to check all the other words against.

result.each_value do |value|
puts "-----"
p value
end



#exercise 7

#what's the difference?

x = "hi there"
my_hash = {x: "some value"}  #x is used as a symbol
my_hash2 = {x => "some value"}  #x is used as a variable



#exercise 8

#If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array

#while manipulating an array, a method 'keys' was called, but wasn't defined.
#B. There is no method called keys for Array objects.


def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
test(a)



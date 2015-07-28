# Back End 101 July 2015, Week 1 Lecture 1 Homework
# https://gist.github.com/kareemgrant/651ad56427a8748daa77

# Exercise One
# Create a function that takes a string and adds
# the phrase "Only in America!" to the end of it
def muricah(text)
  phrase = "Only in America!"
  output = text.to_s + " " + phrase
  puts output
end

muricah("Canburgers!")

# Exercise Two
# Create a function to find the maximum value in
# an array of numbers. For instance: [100,10,-1000]
def biggest(array)
  max_value = array[0]
  array.each do |i|
    if i > max_value
      max_value = i
    end
  end
  puts max_value
end

biggest([60,42,0,6700,-4,8000])

# Exercise Three
# Create a function that takes two arguments - both
# of them arrays. Inside of the function, combine the
# arrays using the items from the first array as keys
# and the second array as values.
def hashUp(array1, array2)
  keys = array1
  values = array2
  new_hash = Hash[keys.zip(values)]
  puts new_hash.inspect
end

hashUp([:toyota, :tesla], ["Prius", "Model S"])

# Exercise Four
# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the
# number and for multiples of five print "Buzz". Print
# "FizzBuzz" for numbers that are multiples of both 3 and 5.
def fizzbuzz
  for i in 1..100
    if i%3 == 0 && i%5 == 0
      puts "FizzBuzz"
    elsif i%3 == 0
      puts "Fizz"
    elsif i%5 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end

fizzbuzz
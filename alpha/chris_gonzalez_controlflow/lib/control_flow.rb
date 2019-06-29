# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  uppers = ""
    str.each_char do |char|
      if str.include?(char.upcase)
        uppers += char
    end
  end
    return uppers
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  if str.length.odd? #odd string length
    return str[str.length / 2]
  else #even string length
    return str[(str.length/2) - 1] + str[str.length/2]
  end
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  counter = 0
  str.each_char do |char|
    if VOWELS.include?(char)
      counter += 1
    end
  end

    return counter
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  if num == 1
    return num
  end

  result = 1
  while num > 0
    result = result * num

    num -= 1
  end
return result
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  join  = ""
  i = 0

  while i < arr.length
  join = join + arr[i]

  if i != arr.length-1  #don't want space at the end
    join = join + separator
  end

 i = i + 1
end
 join

end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  a = ""
  i = 0

  while i < str.length
   if i.odd?
     a << str[i].upcase
   else i.even?
    a << str[i].downcase
   end
  i = i + 1
end
a
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  n = str.split
  a = []
  i = 0
while i < n.length

  if n[i].length >= 5
    a << n[i].reverse

  else n[i].length < 5
     a << n[i]
end
  i = i + 1
end
a.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  i = 1
  fizzbuzzers = []

while i < 16

  if i % 5 == 0  && i % 3 == 0
    fizzbuzzers << "fizzbuzz"

  elsif i % 5 == 0
   fizzbuzzers << "buzz"

  elsif i % 3 == 0
    fizzbuzzers << "fizz"
  else
    fizzbuzzers << i

  end

    i = i + 1
end
    p fizzbuzzers
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  (arr)
 i = arr.length-1
 rev_arr = []

 while i >= 0
 rev_arr << arr [i]
 i = i - 1
end
rev_arr
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  if num == 1
    return false
  end

  for d in 2..(num - 1)
   if (num % d) == 0
    return false
   end
  end
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  i = 1
  array = []

  while i <= num
  if (num % i) == 0
    array << i

  end
  i = i + 1
end
 array.sort
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  arr = factors(num)
  prime_factors_array = []
  index = 0
  arr.each do |n|
    if prime?(n)
      prime_factors_array[index] = n
      index = index + 1
    end
  end
  return prime_factors_array
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  arr = factors(num)
  count = 0
  arr.each do |n|
    if prime?(n)
      count = count + 1
    end
  end
  return count
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd_num = []
  even_num = []
  arr.each do |num|
    if num.even?
      even_num << num
    else
      odd_num << num
    end
  end
    if odd_num.length == 1
      odd_num[0]
    else
      even_num[0]
    end
end

# EASY

# Write a method that returns the range of its argument (an array of integers).
def range(arr)
  arr.sort[-1] - arr.sort[0]
end

# Write a method that returns a boolean indicating whether an array is in sorted
# order. Use the equality operator (==), which returns a boolean indicating
# whether its operands are equal, e.g., 2 == 2 => true, ["cat", "dog"] ==
# ["dog", "cat"] => false
def in_order?(arr)
  arr == arr.sort
end


# MEDIUM

# Write a method that returns the number of vowels in its argument
def num_vowels(str)
  vowels = "aeiou"
  count = 0
  str.downcase.each_char do |char|
    if vowels.include?(char)
      count += 1
    end
  end
  return count
end

# Write a method that returns its argument with all its vowels removed.
def devowel(str)
  new_str = ""
  vowels = "aeiou"

  str.downcase.each_char do |char|
    if !vowels.include?(char)
      new_str += char
    end
  end
  return new_str
end


# HARD

# Write a method that returns the returns an array of the digits of a
# non-negative integer in descending order and as strings, e.g.,
# descending_digits(4291) #=> ["9", "4", "2", "1"]
def descending_digits(int)
   int.to_s.split("").sort.reverse
end

# Write a method that returns a boolean indicating whether a string has
# repeating letters. Capital letters count as repeats of lowercase ones, e.g.,
# repeating_letters?("Aa") => true
def repeating_letters?(str)
  index = 0
new_str = str.split("").sort.join.downcase

while index < str.length
  if new_str[index] == new_str[index + 1]
    return true
  end
  index += 1
end
false

end

# Write a method that converts an array of ten integers into a phone number in
# the format "(123) 456-7890".
def to_phone_number(arr)
  arr.unshift("(")
  arr.insert 4, ") "
  arr.insert 8, "-"
  arr.join
end

# Write a method that returns the range of a string of comma-separated integers,
# e.g., str_range("4,1,8") #=> 7
def str_range(str)
  str = str.split(",").sort
  str[-1].to_i - str[0].to_i
end


#EXPERT

# Write a method that is functionally equivalent to the rotate(offset) method of
# arrays. offset=1 ensures that the value of offset is 1 if no argument is
# provided. HINT: use the take(num) and drop(num) methods. You won't need much
# code, but the solution is tricky!
def my_rotate(arr, offset=1)
  offset = offset % 4
  arr_take = arr.take(offset)
  arr_drop = arr.drop(offset)
  arr_drop + arr_take
end

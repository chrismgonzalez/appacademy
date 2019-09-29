# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)
def is_sorted(arr)
  ordered = true
  i = 0
  while ordered
    arr do i
      if arr[i] < arr[i + 1]
        i++
      end
      return true
    end
    return false
  end

<<<<<<< HEAD:softengfoundations/algorithmic_strategies_exercise/02_is_sorted.rb
def is_sorted(arr)
  (0...arr.length - 1).each do |i|
    return false if arr[i] > arr[i + 1]
  end

  true
=======
>>>>>>> 2d6c85e9fda29eac586dedf1364b47cecd7a7b62:alpha/algorithmic_strategies_exercise/02_is_sorted.rb
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false

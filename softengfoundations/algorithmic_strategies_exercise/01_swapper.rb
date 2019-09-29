# Write a method, swapper(arr, idx_1, idx_2), that accepts an array and two indices as args.
# The method should swap the elements at the given indices and return the array.
# The method should modify the existing array and not create a new array.

<<<<<<< HEAD:softengfoundations/algorithmic_strategies_exercise/01_swapper.rb
def swapper(arr, idx1, idx2)
  arr[idx1], arr[idx2] = arr[idx2], arr[idx1]
  arr
end
=======
def swapper(arr, idx_1, idx_2)
  temp = arr[idx_1]
  arr[idx_1] = arr[idx_2]
  arr[idx_2] = temp

  return arr
end


>>>>>>> 2d6c85e9fda29eac586dedf1364b47cecd7a7b62:alpha/algorithmic_strategies_exercise/01_swapper.rb



p swapper(["a", "b", "c", "d"], 0, 2)
p swapper(["a", "b", "c", "d"], 3, 1)
p swapper(["canal", "broadway", "madison"], 1, 0)

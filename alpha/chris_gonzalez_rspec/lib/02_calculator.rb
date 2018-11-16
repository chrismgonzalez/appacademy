def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  if arr.length == 0
    return 0
  end

  if arr.length == 1
    return arr[0]
  end

  if arr.length == 2
    return arr[0] + arr[1]
  end

  if arr.length > 2
   return arr.sum
  end

end

def multiply(numbers)
  result = 1
  numbers.each {|n| result = result * n}
  result
end

def power(num1, num2)
  return num1 ** num2
end

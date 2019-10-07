def my_map(arr, &prc)
  new_array = []
  arr.each { | ele | new_array << prc.call(ele) }
  new_array
end


def my_select(arr, &prc)
  new_array = []

  arr.each do |ele|
    if prc.call(ele)
      new_array << ele
    end
  end

  new_array
end

def my_count(arr, &prc)
  counter = 0

  arr.each do |ele|
    if prc.call(ele)
      counter += 1
    end
  end

  counter
end

def my_any?(arr, &prc)

  true_counter = 0
  false_counter = 0

  arr.each do |ele|
    if prc.call(ele) == true
      return true
    else
      false_counter += 1
    end
  end

  if false_counter == arr.length
    false
  end

end

def my_all?(arr, &prc)

  true_counter = 0
  false_counter = 0

  arr.each do |ele|
    if prc.call(ele) == true
      true_counter += 1

    else
      false_counter += 1
    end
  end

  if true_counter == arr.length
    return true
  end

  if false_counter >= 1
    false
  end

end

def my_none?(arr, &prc)

  true_counter = 0
  false_counter = 0

  arr.each do |ele|
    if prc.call(ele)
      true_counter += 1

    else
      false_counter += 1
    end
  end

  if true_counter == 0
    return true
  end

  if false_counter >= 1
    false
  end

end
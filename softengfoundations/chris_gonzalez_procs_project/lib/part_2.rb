def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  new_words = []
  split_words = str.split(" ")

  split_words.each do |word|
    new_words << prc.call(word)
  end

  new_words.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)

  if proc_1.call(num) > proc_2.call(num)
    proc_1.call(num)
  else
    proc_2.call(num)
  end

end

def and_selector(array, proc_1, proc_2)
  new_array = []

  array.each do |ele|
    if proc_1.call(ele) && proc_2.call(ele)
      new_array << ele
    end
  end

  new_array
end

def alternating_mapper(array, proc_1, proc_2)
  new_array = []
    array.each_index do |i|
      if i % 2 == 0
        new_array << proc_1.call(array[i])
      else
        new_array << proc_2.call(array[i])
      end
    end

  new_array


end
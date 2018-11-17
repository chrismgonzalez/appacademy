def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, n=2)
  return ((word + ' ')* n).strip
end

def start_of_word(word, chars)
  return word[0..(chars-1)]
end

def first_word(str)
  return str.split(" ")[0]
end

def titleize(str)
  words = str.split(" ")
  words.each {|word| return word.capitalize}

end


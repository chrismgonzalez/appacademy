def echo(word)
   word
end

def shout(word)
   word.upcase
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

LITTLE_WORDS = [
  "and",
  "the",
  "over",
]

def titleize(title)
  words = title.split(" ")
  titleized_words = words.map.with_index do |word, i|
    if i != 0 && LITTLE_WORDS.include?(word)
      word.downcase
    else
      word.capitalize
    end
  end

  titleized_words.join(" ")

end


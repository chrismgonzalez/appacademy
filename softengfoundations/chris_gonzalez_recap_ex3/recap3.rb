def no_dupes?(arr)
  count = Hash.new(0)

  arr.each { |el| count[el] += 1}
  count.keys.select{|el| count[el] == 1}

end

def no_consecutive_repeats?(arr)
  (0...arr.length - 1).each do |idx|
    return false if arr[idx] == arr[idx + 1]
  end

  true
end

def char_indices(string)
  indices = Hash.new { |h, k| h[k] = [] }

  string.each_char.with_index { |ch, i| indices[ch] << i}

  indices
end

def longest_streak(str)
  longest = ''
  current = ''

  (0...str.length).each do |i|
    if str[i] = str[i - 1] || i == 0
      current += str[i]

    else
      current = str[i]
    end

    if current.length >= longest.length
      longest = current
    end
  end

  longest

end

def bi_prime?(num)
  prime_facts = prime_factors(num)
  prime_facts.any? do |a|
    b = num / a
    prime_facts.include?(b)
  end
end

def prime?(num)
  return false if num < 2

  (2...num).none? { |i| num % i == 0}
end

def prime_factors(num)
  (2..num).select { |fact| num % fact == 0 && prime?(fact)}
end

def vigenere_cipher(message, keys)
  alpha = ('a'..'z').to_a
  new_msg = ''

  message.each_char.with_index do |char, idx|
    old_pos = alpha.index(char)
    new_pos = old_pos + keys[idx % keys.length]
    new_pos += alpha[new_pos % alpha.length]
  end

  new_msg
end

def vowel_rotate(str)
  new_str = str[0..-1]
  vowels = 'aeiou'
  vowel_indices = (0...str.length).select { |i| vowels.include?(str[i])}
  new_vowel_indices = vowel_indices.rotate(-1)

  vowel_indices.each_with_index do |vowel_idx, i|
    new_vowel = str[new_vowel_indices[i]]

    new_str[vowel_idx]
  end

  new_str
end

#part B

class string
  def select(&prc)
    return '' if prc.nil?
    new_str = ''

    self.each_char do |char|
      new_str += char if prc.call(char)
    end

    new_str
  end


  def map!(&prc)
    self.each_char.with_index do |char, i|
      self[i] = prc.call(char, i)
    end
  end
end

def multiply(a, b)
  return 0 if b == 0
  if b < 0
    -(a + multiply(a, (-b) - 1))
  else
    a + multiply(a, b - 1)
  end
end

def lucas_sequence(length)
  return [] if length == 0
  return [2] if length == 1
  return [2, 1] if length == 2

  seq = lucas_sequence(length-1)
  next_el = seq[-1] + seq[-2]
  seq << next_el
  seq
end

def prime_factorization(num)
  (2...num).each do |fact|
    if num % fact == 0
      other_fact = num / fact
      return [ *prime_factorization(fact), *prime_factorization(other_fact)]
    end
  end

  [ num ]
end
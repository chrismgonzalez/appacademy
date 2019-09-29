# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if !self.empty?
      self.sort!
      return self[-1] - self[0]
    end
   nil
  end


  def average
    if !self.empty?
      added = self.sum.to_f
      return  average = added / self.length.to_f
    end
    nil
  end

  def median
    if !self.empty?
       sorted = self.sort
       half_len = (sorted.length / 2.0).ceil
       return (sorted[half_len - 1] + sorted[-half_len]) / 2.0
    end
    nil

  end

  def counts
    counts = Hash.new(0)
    self.each do |el|
      counts[el] += 1
    end
    return counts
  end

  def my_count(val)
    counts = Hash.new(0)
    self.each do |el|
      counts[el] += 1
    end
    return counts[val]
  end

  def my_index(val)
    if self.include?(val)
      return self.index(val)
    end
    nil
  end

  def my_uniq
    unique = []
    self.each do |el|
      if !unique.include?(el)
         unique << el
      end
  end
  return unique
end

def my_transpose
    new_arr = []

    (0...self.length).each do |row|
      new_row = []

      (0...self.length).each do |col|
        new_row << self[col][row]
      end

      new_arr << new_row

    end

    new_arr
  end
end

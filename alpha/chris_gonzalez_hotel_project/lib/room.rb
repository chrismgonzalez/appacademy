class Room
  def initialize(number)
    @capacity = number
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if @occupants.length == @capacity
      return true
    end
    false
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(person)
    if !self.full?
      @occupants << person
      return true
    end
    false

  end
end

class Dog
  def initialize(name)
    @name = name
  end

  def self.bark
    "WOOF!!!"
end
  #yell_name is an instance method
  def yell_name
    @name.upcase + "!"
  end

  def greet
    self.yell_name + " says hi."
  end

  def say_name
    "#{@name} says Hello!"
  end
end

dog_1 = Dog.new('Fido')
p dog_1.say_name
p Dog.bark
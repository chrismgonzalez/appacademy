require "employee"

class Startup

  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.has_key?(title)
  end

  def >(other_startup)
    self.funding > other_startup.funding
  end

  def hire(employee_name, title)
    if self.valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise "Invalid title for employee!"
    end
  end

  def size
     @employees.length
  end

  def pay_employee(employee)
    money_owed = @salaries[employee.title]

    if @funding >= money_owed
      employee.pay(money_owed)
      @funding -= money_owed
    else
      raise "Not enough funds!"
    end

  end

  def payday
    @employees.each do |employee|
      self.pay_employee(employee)
    end
  end



end


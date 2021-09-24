class Employee

  attr_accessor :name, :title, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    @name = name          
    @title = title
    @salary = salary
    @boss = boss
    @bonus = 0
  end

  def bonus(multiplier)
    @bonus = @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :manage_employee

  def initialize(name, title, salary, boss = nil)
    super
    @manage_employee = []
  end

  def add_sub_employee(*emplyee_instance)
    @manage_employee = emplyee_instance #array
  end

  def manager_bonus(multiplier)
    total = 0
    @manage_employee.each do |employee|
      total += employee.salary
    end
    return total * multiplier
  end
end

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "David")

ned.add_sub_employee(darren, shawna, david)
p ned.manager_bonus(5)

darren.add_sub_employee(shawna, david)
p darren.manager_bonus(4)

p david.bonus(3)




class Department
  attr_accessor :dept_name, :employees

  def initialize(dept_name, employees={})
    @dept_name = dept_name
    @employees = employees
  end

  def add_employee(person)
    # {"Name" => Person object, "Name" => Person object}
    @employees[person.name] = person
  end

  def dept_salary
    sum = 0
    @employees.each_key { |individual| sum += @employees[individual].salary }
    sum
  end

  def dept_raise(bonus)
    @employees.each_key { |individual|
        if @employees[individual].performance == "Satisfactory"
          @employees[individual].salary = @employees[individual].salary + bonus
        end
    }
  end
end

class Department
  attr_accessor :dept_name, :employees

  def initialize(dept_name, employees={})
    @dept_name = dept_name
    @employees = employees
  end

  def add_employee(person)
    @employees[person.name] = person
  end
end

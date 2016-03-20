require "minitest/autorun"
require "minitest/pride"
require_relative "../employee"
require_relative "../department"

class DepartmentTest < Minitest::Test
  def setup
    @sales = Department.new("Sales")
    @jerry = Employee.new("Jerry Gergich", "larry@gmail.com", "202-000-0000", 45000, "Terry is a good employee", "Satisfactory")
    @sebastian = Employee.new("Li'l Sebastian", "immatinypony@yahoo.com", "202-222-2222", 60000, "Li'l Sebastian is a sacred treasure", "Satisfactory")
    @jeremy = Employee.new("Jeremy Jamm", "youjustgotjammed@aol.com", "202-333-3333", 50000, "Jeremy doesn't work well with others","Unsatisfactory")
  end

  # 1
  def test_creating_a_new_department
    assert_equal Department, @sales.class
  end

  # 2
  def test_adding_an_employee_to_department
    assert_equal @jerry, @sales.add_employee(@jerry)
  end

  # 3
  def test_retrieving_department_name
    assert_equal "Sales", @sales.dept_name
  end

  # 4
  def test_retrieving_salary_of_all_employees_in_department
    @sales.add_employee(@jerry)
    @sales.add_employee(@sebastian)
    @sales.add_employee(@jeremy)
    @sales.employees
    assert_equal 155000, @sales.dept_salary
  end

  # 5
  def test_give_department_a_raise
    @sales.add_employee(@jerry)
    @sales.add_employee(@sebastian)
    @sales.add_employee(@jeremy)
    @sales.employees
    assert_equal @sales.employees, @sales.dept_raise(500)
  end
end

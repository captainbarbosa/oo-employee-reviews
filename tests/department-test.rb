require "minitest/autorun"
require "minitest/pride"
require_relative "../employee"
require_relative "../department"

class DepartmentTest < Minitest::Test
  def employee
    ::Department.new
  end

    # 1
  def test_creating_a_new_department
    skip
  end

  # 2
  def test_adding_an_employee_to_department
    skip
  end

  # 3
  def test_retrieving_department_name
    skip
  end

  # 4
  def test_retrieving_salary_of_all_employees_in_department
    skip
  end

  # 5
  def test_give_department_a_raise
    skip
  end
end

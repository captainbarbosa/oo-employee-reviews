require "minitest/autorun"
require "minitest/pride"
require_relative "../employee"
require_relative "../department"

class EmployeeTest < Minitest::Test
  def employee
    ::Employee.new("Bob", "bob@gmail.com", "202-000-0000", "$50000")
  end

  # 1
  def test_creating_a_new_employee
      assert_equal Employee, employee.class
  end

  # 2
  def test_retrieving_employee_name
      assert_equal "Bob", employee.name
  end

  # 3
  def test_retrieving_employee_salary
      skip
  end

  # 4
  def test_adding_review_text_to_employee
      skip
  end

  # 5
  def test_marking_employee_performance
      skip
  end

  # 6
  def test_give_employee_a_raise
      skip
  end
end

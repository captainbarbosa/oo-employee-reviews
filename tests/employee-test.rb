require "minitest/autorun"
require "minitest/pride"
require_relative "../employee"
require_relative "../department"

class EmployeeTest < Minitest::Test
  def setup
    @bob = Employee.new("Bob", "bob@gmail.com", "202-000-0000", 50000)
  end

  # 1
  def test_creating_a_new_employee
      assert_equal Employee, @bob.class
      #            ^ Expected         ^ Actual
  end

  # 2
  def test_retrieving_employee_name
      assert_equal "Bob", @bob.name
  end

  # 3
  def test_retrieving_employee_salary
      assert_equal 50000, @bob.salary
  end

  # 4
  def test_adding_review_text_to_employee
      @bob.review_text =  "Bob is a good employee"
      assert_equal "Bob is a good employee", @bob.review_text
  end

  # 5
  def test_marking_employee_performance
      @bob.performance =  "Satisfactory"
      assert_equal "Satisfactory", @bob.performance
  end

  # 6
  def test_give_employee_a_raise
      @bob.give_raise(0.05) #52,500
      assert_equal 52500, @bob.salary
  end
end

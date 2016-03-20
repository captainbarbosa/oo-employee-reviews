require "minitest/autorun"        # => true
require "minitest/pride"          # => true
require_relative "../employee"    # => true
require_relative "../department"  # => true

class DepartmentTest < Minitest::Test                                                                                                                    # => Minitest::Test
  def setup
    @sales = Department.new("Sales")                                                                                                                     # => #<Department:0x007f9673152fa0 @dept_name="Sales", @employees={}>, #<Department:0x007f967314a940 @dept_name="Sales", @employees={}>, #<Department:0x007f9673149040 @dept_name="Sales", @employees={}>, #<Department:0x007f9673143690 @dept_name="Sales", @employees={}>, #<Department:0x007f9673140940 @dept_name="Sales", @employees={}>
    @jerry = Employee.new("Jerry Gergich", "larry@gmail.com", "202-000-0000", 45000, "Terry is a good employee", "Satisfactory")                         # => #<Employee:0x007f967314bcf0 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">, #<Employee:0x007f967314a440 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">, #<Employee:0x007f9673148c08 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">, #<Employee:0x007f96731432d0 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">, #<Employee:0x007f9673140530 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">
    @sebastian = Employee.new("Li'l Sebastian", "immatinypony@yahoo.com", "202-222-2222", 60000, "Li'l Sebastian is a sacred treasure", "Satisfactory")  # => #<Employee:0x007f967314b7a0 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">, #<Employee:0x007f9673149ec8 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">, #<Employee:0x007f96731486e0 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">, #<Employee:0x007f9673142e20 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">, #<Employee:0x007f9673140198 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">
    @jeremy = Employee.new("Jeremy Jamm", "youjustgotjammed@aol.com", "202-333-3333", 50000, "Jeremy doesn't work well with others","Unsatisfactory")    # => #<Employee:0x007f967314b340 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">, #<Employee:0x007f9673149928 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">, #<Employee:0x007f96731482f8 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">, #<Employee:0x007f9673142858 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">, #<Employee:0x007f9673141228 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">
  end                                                                                                                                                    # => :setup

  # 1
  def test_creating_a_new_department
    assert_equal Department, @sales.class  # => true
  end                                      # => :test_creating_a_new_department

  # 2
  def test_adding_an_employee_to_department
    assert_equal @jerry, @sales.add_employee(@jerry)  # => true
  end                                                 # => :test_adding_an_employee_to_department

  # 3
  def test_retrieving_department_name
    assert_equal "Sales", @sales.dept_name  # => true
  end                                       # => :test_retrieving_department_name

  # 4
  def test_retrieving_salary_of_all_employees_in_department
    @sales.add_employee(@jerry)                              # => #<Employee:0x007f96731432d0 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">
    @sales.add_employee(@sebastian)                          # => #<Employee:0x007f9673142e20 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">
    @sales.add_employee(@jeremy)                             # => #<Employee:0x007f9673142858 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">
    @sales.employees                                         # => {"Jerry Gergich"=>#<Employee:0x007f96731432d0 @name="Jerry Gergich", @email="larry@gmail.com", @phone="202-000-0000", @salary=45000, @review_text="Terry is a good employee", @performance="Satisfactory">, "Li'l Sebastian"=>#<Employee:0x007f9673142e20 @name="Li'l Sebastian", @email="immatinypony@yahoo.com", @phone="202-222-2222", @salary=60000, @review_text="Li'l Sebastian is a sacred treasure", @performance="Satisfactory">, "Jeremy Jamm"=>#<Employee:0x007f9673142858 @name="Jeremy Jamm", @email="youjustgotjammed@aol.com", @phone="202-333-3333", @salary=50000, @review_text="Jeremy doesn't work well with others", @performance="Unsatisfactory">}
    assert_equal 155000, @sales.dept_salary
  end                                                        # => :test_retrieving_salary_of_all_employees_in_department

  # 5
  def test_give_department_a_raise
    skip
  end                               # => :test_give_department_a_raise
end                                 # => :test_give_department_a_raise

# >> Run options: --seed 59785
# >>
# >> # Running:
# >>
# >> ..SE.
# >>
# >> Finished in 0.001645s, 3038.9521 runs/s, 1823.3712 assertions/s.
# >>
# >>   1) Error:
# >> DepartmentTest#test_retrieving_salary_of_all_employees_in_department:
# >> NoMethodError: undefined method `salary' for #<Array:0x007f9673140e68>
# >>     /Users/nadiabarbosa/Repos/TIY/tiy-employee-reviews/department.rb:16:in `block in dept_salary'
# >>     /Users/nadiabarbosa/Repos/TIY/tiy-employee-reviews/department.rb:16:in `each'
# >>     /Users/nadiabarbosa/Repos/TIY/tiy-employee-reviews/department.rb:16:in `dept_salary'
# >>     /Users/nadiabarbosa/Repos/TIY/tiy-employee-reviews/tests/department-test.rb:35:in `test_retrieving_salary_of_all_employees_in_department'
# >>
# >> 5 runs, 3 assertions, 0 failures, 1 errors, 1 skips
# >>
# >> You have skipped tests. Run with --verbose for details.

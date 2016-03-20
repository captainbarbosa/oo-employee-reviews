require_relative "./employee"
require_relative "./department"

# Create new employees
leslie = Employee.new("Leslie Knope", "leslie@pawnee.gov", "202-111-1111", 70000)
perd = Employee.new("Perd Hapley", "my_gmail_for_email@gmail.com", "202-222-2222", 45000)
donna = Employee.new("Donna Meagle", "treat_yo_self@yahoo.com", "202-333-3333", 65000)
ann = Employee.new("Ann Perkins", "beautiful_tropical_fish@hotmail.com", "202-444-4444", 68000)
bobby = Employee.new("Bobby Newport", "bobby@sweetums.com", "202-555-5555", 100000)

# Get an employee's name
leslie.name  # => "Leslie Knope"

# Get an employee's salary
leslie.salary  # => 70000
perd.salary    # => 45000
donna.salary   # => 65000
ann.salary     # => 68000
bobby.salary   # => 100000

# Add review text to an employee
leslie.review_text = "Leslie is an excellent employee."

# Give an individual employee a raise (%)
leslie.give_raise(0.10)  # => 77000.0

# Mark employee performance as satisfactory or unsatisfactory
leslie.performance = "Satisfactory"
perd.performance = "Unsatisfactory"
donna.performance = "Satisfactory"
ann.performance = "Satisfactory"
bobby.performance = "Unsatisfactory"

# Create a new department
pawnee = Department.new("Pawnee")

# Add employees to a department
pawnee.add_employee(leslie)
pawnee.add_employee(perd)
pawnee.add_employee(donna)
pawnee.add_employee(bobby)

# Get a department name
pawnee.dept_name  # => "Pawnee"

# Get salary for all employees in a department
pawnee.dept_salary  # => 355000.0

# Give an entire department a raise, excluding those with unsatisfactory performance
pawnee.dept_raise(2000)

pawnee.dept_salary       # => 361000.0

leslie.salary            # => 79000.0   +2000
perd.salary              # => 45000
donna.salary             # => 67000     +2000
ann.salary               # => 70000     +2000
bobby.salary             # => 100000

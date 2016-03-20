class Employee
  # Allows R/W of the following variables
  attr_accessor :name, :email, :phone, :salary, :review_text, :performance

  def initialize(name, email, phone, salary, review_text=nil, performance=nil)
    @name = name
    @email = email
    @phone = phone

    @salary = salary

    @review_text = review_text
    @performance = performance
  end

  def give_raise(percent)
    @salary = @salary + (@salary * percent)
  end
end

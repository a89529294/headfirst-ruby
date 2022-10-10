class Employee
  attr_reader :name

  def name=(name)
    raise 'Name cannot be blank!' if name.empty?

    @name = name
  end

  def initialize(name = 'Anon')
    self.name = name
  end

  def print_name
    puts "Name: #{name}"
  end
end

class SalariedEmployee < Employee
  attr_reader :salary

  def salary=(salary)
    raise 'Salary cannot be negative!' if salary.negative?

    @salary = salary
  end

  def initialize(name = 'Anon', salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    two_weeks_pay = salary / 365.0 * 14
    formatted_pay = format('$%.2f', two_weeks_pay)
    print_name
    puts "Pay this period: #{formatted_pay}"
  end
end

class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage=(wage)
    raise 'Wage cannot be negative!' if wage.negative?

    @hourly_wage = wage
  end

  def hours_per_week=(hours)
    raise 'hours cannot be negative!' if hours.negative?

    @hours_per_week = hours
  end

  def initialize(name = 'Anon', hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def self.security_guard(name = 'Anon')
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name = 'Anon')
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name = 'Anon')
    HourlyEmployee.new(name, 10.50, 20)
  end

  def print_pay_stub
    two_weeks_pay = hourly_wage * hours_per_week * 2.0
    formatted_pay = format('$%.2f', two_weeks_pay)
    print_name
    puts "Pay this period: #{formatted_pay}"
  end
end

# se = SalariedEmployee.new('John', 10_000)
# se.print_pay_stub

# he = HourlyEmployee.new('Jane', 10, 100)
# he.print_pay_stub

c = HourlyEmployee.cashier
c.print_pay_stub

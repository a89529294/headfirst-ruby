class Animal
  attr_reader :name, :age

  def name=(new_value)
    raise 'Name cannot be blank!' if new_value.empty?

    @name = new_value
  end

  def age=(new_value)
    raise 'Age cannot be negative!' if new_value.negative?

    @age = new_value
  end

  def report_age
    puts "#{@name} is #{@age} old!"
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{destination}!"
  end
end

class Dog < Animal
  def to_s
    "#{@name} the dog, age #{@age}"
  end
end

class Bird < Animal
  def talk
    puts "#{@name} says chirp!"
  end
end

class Cat < Animal
  def talk
    puts "#{@name} says meow!"
  end
end

class Armadillo < Animal
  def move(destination)
    puts "#{@name} unrolls!"
    super
  end
end

# dog = Dog.new
# dog.name = ('Dobby')
# dog.age = 7
# dog.report_age

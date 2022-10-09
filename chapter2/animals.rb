class Bird
  def talk
    puts 'Chirp! Chirp!'
  end

  def move(destination)
    puts "Flying to the #{destination}!"
  end

  def make_up_name
    @name = 'birdie'
  end
end

class Dog
  attr_reader :name, :age

  def name=(new_value)
    raise 'Name cannot be blank!' if new_value.length === 0

    @name = new_value
  end

  def age=(new_value)
    raise 'Age cannot be negative!' if new_value < 0

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

class Cat
  def talk
    puts 'Meow!'
  end

  def move(destination)
    puts "Running to the #{destination}!"
  end
end

dog = Dog.new
dog.name = 'Dobby'
dog.age = 7
dog.report_age
dog.talk
dog.move('bones')

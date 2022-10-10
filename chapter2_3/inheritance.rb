class Vehicle
  attr_accessor :odometer

  def drive
    puts 'the vehicle is moving!'
  end
end

class Car < Vehicle
end

class Steak
  include Comparable

  attr_accessor :grade

  GRADE_SCORES = { 'Prime' => 3, 'Choice' => 2, 'Select' => 1 }

  def <=>(other)
    GRADE_SCORES[grade] - GRADE_SCORES[other.grade]
  end
end

steak1 = Steak.new
steak2 = Steak.new

steak1.grade = 'Prime'
steak2.grade = 'Choice'

puts steak1 > steak2
puts steak1 == steak2

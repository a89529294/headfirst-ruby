# lines = []

# File.open('reviews.txt') do |file|
#   lines = file.readlines
# end

# relevant_lines = lines.find_all do |line|
#   line.include? 'Truncated'
# end

# puts relevant_lines

def print_block_value
  puts yield
end

def other_method
  print_block_value { 1 + 1 }
end

other_method

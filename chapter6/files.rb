lines = []

File.open('reviews.txt') do |file|
  lines = file.readlines
end

relevant_lines = lines.find_all do |line|
  line.include? 'Truncated' and !line.include? '--'
end

def find_adjective(str)
  arr = str.split(' ')
  idx = arr.find_index('is')
  arr[idx + 1]
end

adjectives = relevant_lines.map do |line|
  adjective = find_adjective(line).match(/\w+/).to_s
  "'#{adjective.capitalize}'"
end

puts adjectives

lines = []

File.open('votes.txt') do |file|
  lines = file.readlines.map { |line| line.chomp }
end

result = Hash.new(0)

lines.each do |name|
  name.upcase!
  result[name] += 1
end

result.each do |name, count|
  puts "#{name}: #{count}"
end

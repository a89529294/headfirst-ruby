puts "Welcome to 'Get My Number'!"
print "What's your name?"
name = gets.chomp
puts "Welcome, #{name}!"

puts "I've got a random number between 1 and 100."
puts 'Can you guess it?'
target = rand(1..100)

num_guessess = 0
guessed_it = false

until guessed_it || num_guessess == 10
  puts "You've got #{10 - num_guessess} guesses left"
  print 'Make a guess: '
  guess = gets.to_i
  num_guessess += 1

  if guess < target
    puts 'Oops. Your guess was LOW.'
  elsif guess > target
    puts 'Oops. Your guess was HIGH.'
  else
    puts "Good job, #{name}!"
    puts "You guessed my number in #{num_guessess} guessess!"
    guessed_it = true
  end
end

puts "Sorry. You didn't get my number. It was #{target}." unless guessed_it

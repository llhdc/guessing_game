def is_invalid
  puts "That's cute, but that's either not a number or not a valid one. I'll repeat since you seem to struggle with following instructions. Pick a number. Between 1 and 100: "
end

def get_guess
  gets.to_i
end

puts "Guess a number between 1 and 100. You have 5 chances to get it right. Don't mess this up: "
answer = rand(1 .. 100)
puts answer
guess = get_guess
guesses = []
guesses.push(guess)
tries = 1


while guess != answer && tries < 5

  if guess < 1 || guess > 100
    is_invalid
  elsif guess < answer
    puts "You're cold. Real cold. Guess higher: "
  else
    puts "Easy. Little to eager there, champ. Guess lower: "
  end

  guess = get_guess
  if guesses.include?(guess)
    puts "You already guessed that."
  end
  guesses.push(guess)
  tries += 1
  
end

if guess != answer && tries == 5
  puts "The answer was #{answer}. Sorry. Game over. You couldn't figure it out, even after 5 tries. You're clearly not very good at this. Oh, come on, don't cry about it. Sorry not sorry. Feel free to play again...when you grow up..."
  exit
elsif guess == answer && tries == 5
  puts "Got it on the last guess? You're not clutch, you're lucky! Play again to find out what you're REALLY made of."
elsif guess == answer && tries == 1
  puts "Hmmm...you think you're cool don't you? Got it on the first try. Dumb luck, surely. Play again and see if you're REALLY cool, smart, lucky and successful in life. I dare ya."
  exit
else
  puts "Guess today is your lucky day. You...you win! I don't like winners like you because I can't hurl insults at them. Bye."
  exit
end

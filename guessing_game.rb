p "Guess a number between 1 and 100: "
guess = gets.to_i
answer = rand(1 .. 100)
tries = 1

while guess != answer

  if guess == 0
    p "That's cute, but that's either 0 or not a number. Try again:"
    guess = gets.to_i
    tries += 1
  elsif guess < answer
    p "You're cold. Real cold. Guess higher: "
    guess = gets.to_i
    tries += 1
  elsif guess > answer
    p "Easy. Guess lower: "
    guess = gets.to_i
    tries += 1
  elsif guess > 100
    p "You're way too hot. Take a chill pill. Guess between 1 and 100: "

  end

  if tries == 5
    p "Sorry. Game over. You couldn't figure it out, even after 5 tries. You're clearly not very good at this. Oh, come on, don't cry about it. I'll give you another chance: "
    guess = gets.to_i
    tries = 1
  end

  if guess == answer
    p "Guess today is your lucky day. Play again and see if you're REALLY lucky or just flukey. Go on: "
    guess = gets.to_i
    answer = rand(1 .. 100)
    tries = 1
  end
end

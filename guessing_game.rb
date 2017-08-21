p "Guess a number between 1 and 100: "
guess = gets.to_i
answer = rand(1 .. 100)
tries = 1

while guess != answer

  if guess.to_s == true
    p "That's cute, but that's not a number. Try again."
    tries += 1
  elsif guess < answer
    p "You're cold. Real cold. Guess again: "
    guess = gets.to_i
    tries += 1
  elsif guess > answer
    p "You're way too hot. Take a chill pill. Try again: "
    guess = gets.to_i
    tries += 1
  end

  if tries == 5
    p "Sorry. Game over. You couldn't figure it out, even after 5 tries. You're clearly not very good at this. Oh, come on, don't cry about it. I'll give you another chance: "
    guess = gets.to_i
    tries = 1
  end

  if guess == answer
    p "Guess today is your lucky day. Play again and see if you're REALLY lucky or just flukey. Go on: "
    guess = gets.to_i
    tries = 1
  end
end

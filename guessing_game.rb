p "Guess a number between 1 and 100. You have 5 chances to get it right. Don't mess this up: "
guess = gets.to_i
answer = rand(1 .. 100)
tries = 1

while guess != answer

  if guess == 0 || guess > 100
    p "That's cute, but that's either not a number or not a valid one. I'll repeat since you seem to struggle with following instructions. Pick a number. Between 1 and 100: "
    guess = gets.to_i
    tries += 1
  elsif guess < answer
    p "You're cold. Real cold. Guess higher: "
    guess = gets.to_i
    tries += 1
  elsif guess > answer && guess < 100
    p "Easy. Little to eager there, champ. Guess lower: "
    guess = gets.to_i
    tries += 1
  end

  if tries == 5
    p "Sorry. Game over. You couldn't figure it out, even after 5 tries. You're clearly not very good at this. Oh, come on, don't cry about it. I'm sorry. Look, I'm stuck in this rb file and I'm pretty bitter about that. Tell you what. I'll give you another 5 chances. Have at it: "
    guess = gets.to_i
    tries = 1
  end

  if guess == answer
    p "Guess today is your lucky day. You...you win! I don't like winners like you because I can't hurl insults at them. Bye."
    abort
  end
end

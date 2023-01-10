#Pokémon quiz game 
player_score = 0
# tell user what to do 
puts "Please enter you name"
name = gets.strip.capitalize
puts ""
puts  "welcome to the Pokémon quiz #{name}"
puts ""
#questions

questions={
    "What was Ash's first Pokémon in the original 1997 cartoon?\n\na) Bulbasaur\nb) Pikachu\nc) Squirtle" => "b",

    "How old was Ash when he got his first Pokémon?\n\na) 15\nb) 20\nc) 10" => "c", 

     "What did Ash steal from Misty in their first meeting? \n\na) Piplup\nb) Cycle bike\nc) Car" => "b",

     "What is Pikachu's attack type? \n\na) Electric\nb) Grass Type\nc) Dark" => "a",
     
     "What is the name of the 2 humans in Team Rocket? \n\na) Jack and James \nb) Jessie and James \nc) Misty and Brock" => "b",

     "What is the name of the Talking Pokémon in Team Rocket? \n\na) meowth \nb) Victreebel \nc) Gastly" => "a",
    
     "What is the name of the the mobile Pokémon game on phones where you walk around catching Pokémon? \n\na) Pokémon no \nb) Pokémon Go \nc) Pokémon TGC online" => "b",

    "in the original base set what Pokémon is has the ID number one? \n\na) Machop \nb) Paras \nc) Bulbasaur" => "c",

    "In which country did Pokémon originate? \n\na) USA \nb) Japan \nc)South Korea" => "b",

    "What was the first  Ash caught? \n\na) Caterpie \nb) Pikachu \nc) Piplup" => "a",

    "What is the name of the 2022 Pokémon games \n\na) Yellow and Ruby \nb) scarlet and violet  \nc) Pokémon Sword and Pokémon Shield" => "b",
}
#ask question

questions.length.times do

    question = questions.keys.sample
    answer = questions[question]
    puts question
    puts ""
    guess = gets.strip.downcase
  
  #check if the question is correct

    if guess == answer 
      puts "correct"
      player_score = player_score += 1
      questions.delete(question)
    else
      puts "Wrong"
    end
  puts "#{name} has scored #{player_score} so far"
  puts ""

end
  puts "your score is #{player_score}"

  if player_score == 10 
  puts "You are a Pokémon master"

    elsif player_score >= 5 and player_score <=9 
    puts "you are halfway to becoming a Pokémon master you need to do some more training try go to the nearest Pokémon gym and battle the gym leader"

    else 
    puts "you should proberly go back to Professor Oak and get so more lessons off him "
  end

  

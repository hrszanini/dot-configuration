function fish_greeting
	set shinny_chance $(random 1 10)

	if [ $shinny_chance -eq 1 ]
		echo 
		set shinny "-s"
	end

	pokeget --hide-name $shinny random

    set sentences \
    "Yeah man!" \
    "Acho que você não tá querendo mexer no terminal não..." \
    "Que tela bonita!" \
    "Aaah! Que delícia de terminal, cara!" \
    "Gosta de curl não, porra?" \
    "To fingindo que to trabaiano..." \
    "O \"F\" em programador significa felicidade :D" \
    "Se você está lendo isso, você consegue ler."
    echo $(random choice $sentences)
	
end

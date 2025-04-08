function fish_greeting

	set xgh_sentences \
	"Pensou, não é XGH " \
	"Existem 3 formas de se resolver um problema, a correta, a errada e a XGH, que é igual à errada, só que mais rápida" \
	"Quanto mais XGH você faz, mais precisará fazer" \
	"XGH é totalmente reativo" \
	"XGH vale tudo, só não vale dar o toba" \
	"Commit sempre antes de update" \
	"XGH não tem prazo" \
	"Esteja preparado para pular fora quando o barco começar a afundar… ou coloque a culpa em alguém ou algo" \
	"Seja autêntico, XGH não respeita padrões" \
	"Não existe refactoring, apenas rework" \
	"XGH é totalmente anárquico" \
	"Se iluda sempre com promessas de melhorias" \
	"XGH é absoluto, não se prende à coisas relativas" \
	"XGH é atemporal" \
	"XGH nem sempre é POG" \
	"Não tente remar contra a maré" \
	"O XGH não é perigoso até surgir um pouco de ordem" \
	"O XGH é seu brother, mas é vingativo" \
	"Se tiver funcionando, não rela a mão" \
	"Teste é para os fracos" \
	"Acostume-se ao sentimento de fracasso iminente" \
	"O problema só é seu quando seu nome está no Doc da classe" \

    set sentences \
    "Yeah man!" \
    "Acho que você não tá querendo mexer no terminal não..." \
    "Que tela bonita!" \
    "Aaah! Que delícia de terminal, cara!" \
    "Gosta de curl não, porra?" \
    "To fingindo que to trabaiano..." \
    "O \"F\" em programador significa felicidade :D" \
    "Se você está lendo isso, você consegue ler."

	set cowsay_file /tmp/pokemon.cow
	set shinny_chance $(random 1 10)

	if [ $shinny_chance -eq 1 ]
		set shinny_text ""
		set shinny "-s"
	end

	echo '## PokeCow'\n'$the_cow = <<EOC;'\n'  $thoughts'\n'   $thoughts' > $cowsay_file
	pokeget --hide-name $shinny random >> $cowsay_file
	echo $shinny_text >> $cowsay_file
	echo "EOC" >> $cowsay_file

    echo $(random choice $xgh_sentences) | cowsay -f $cowsay_file
    # echo [Sabedoria DEV] $(random choice $sentences)
	
end

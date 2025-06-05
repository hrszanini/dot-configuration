#!/bin/bash
cowsay_file=/tmp/pokemon.cow
sentences_file=~/.config/scripts/sentences.txt

sentences_size=$(wc -l < "$sentences_file")

shiny_chance=$(($RANDOM % 10 + 1))
sentence_choice=$(($RANDOM % sentences_size + 1))

shiny_text=""
shiny_option=""

if [[ $shiny_chance == "1" ]]; then
    shiny_text=""
    shiny_option="-s"
fi

sentence=$(sed -n "${sentence_choice}p" "$sentences_file")

echo '## PokeCow        ' > "$cowsay_file"
echo '$the_cow = <<EOC; ' >> "$cowsay_file"
echo ' $thoughts        ' >> "$cowsay_file"
echo '  $thoughts       ' >> "$cowsay_file"
pokeget --hide-name $shiny_option random >> "$cowsay_file"
echo "$shiny_text" >> "$cowsay_file"
echo "EOC" >> "$cowsay_file"

echo "$sentence" | cowsay -f "$cowsay_file"


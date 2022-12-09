puts "Введите количество покемонов"
$pokemoncount = gets.to_i

$massivepokemonov = []

def addpokemons()
    $pokemoncount.times do
        print "Как назовём покемона?"
        pokemonname = gets.chomp
        puts "Какого цвета будет покемон?"
        pokemoncolour = gets.chomp

        $massivepokemonov << {name: pokemonname, color: pokemoncolour}
    end
end

addpokemons()

puts "Вот список наших покемонов:"
puts $massivepokemonov


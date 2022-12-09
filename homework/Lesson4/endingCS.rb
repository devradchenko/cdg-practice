print "Введите слово: "
word = gets.chomp

def ending(word)
    if word.downcase[-2..-1] == "cs"
        puts 2**word.length
    else
        puts word.reverse
    end
end

ending(word)
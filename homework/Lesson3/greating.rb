puts "Введите Ваше Имя: "
name = gets.chomp.to_s
puts "Введите Ваше Имя: "
secondname = gets.chomp.to_s
puts "Введите Ваше Имя: "
age = gets.to_i

def greating(name, secondname, age)
    print "Привет, #{name} #{secondname},"
    age < 18 ? " Тебе меньше 18, но начать программировать никогда не рано" : "Самое время заняться делом!"
end

puts greating(name, secondname, age)
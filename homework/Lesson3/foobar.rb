puts "Введите первое число: "
num1 = gets.to_i
puts "Введите второе число: "
num2 = gets.to_i

def foobar(num1, num2)
    if num1 == 20
        puts num2
    elsif num2 == 20
        puts num1
    else
        print "Сумма чисел: "
        puts num1 + num2
    end
end

foobar(num1, num2)
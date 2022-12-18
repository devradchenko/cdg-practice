BALANCE = 'balance.txt'
CONST_BALANCE = 100.0
$balance = ""

if File.exist?(BALANCE)
    file = File.open(BALANCE)
    file_string = file.read.chomp
    $balance = file_string.to_f
    file.close
else
    $balance = CONST_BALANCE
end

def deposit()
    puts "Ваш баланс: ", $balance
    puts "Введите сумму депозита: "
    deposit = gets.to_f
    if deposit > 0
        sum1 = $balance.to_f
        sum2 = deposit.to_f
        $balance = sum1 + sum2
        puts "Теперь ваш баланс: ", $balance
        File.open(BALANCE, "w") { |b| b.write $balance}
    else
        puts "ERROR: Сумма депозита не может быть меньше 0"
    end
end

def withdraw()
    puts "Ваш баланс: ", $balance
    puts "Сколько вы хотите снять средств: "
    withdraw = gets.to_f
    if withdraw > 0 && withdraw <= $balance
        sum1 = $balance.to_f
        sum2 = withdraw.to_f
        $balance = sum1 - sum2
        puts "Теперь ваш баланс: ", $balance
        File.open(BALANCE, "w") { |b| b.write $balance}
    else
        puts "ERROR: Нельзя снять меньше 1 и больше суммы баланса"
    end
end

def balance()
    file = File.open(BALANCE)
    bal = file.read.chomp
    puts "Ваш текущий баланс: ", bal
    file.close
end

loop do
    puts "Вы находитесь в меню банка!"
    puts "Введите 'D', чтобы совершить депозит"
    puts "Введите 'W', чтобы снять средства"
    puts "Введите 'B', чтобы посмотреть баланс"
    puts "Введите 'Q', чтобы выйти из меню"
    user_data = gets.to_s.upcase.chomp
    break if user_data == "Q"
    if user_data == "D"
        deposit()
    elsif user_data == "W"
        withdraw()
    elsif user_data == "B"
        balance()
    elsif
        puts 'ERROR: используйте команды, указанные в меню'
    end
end

TEXT = "text.txt"
RESULTS = "results.txt"

def index()
    File.foreach(RESULTS) { |line| puts line } 
end

def where(pattern)
    File.foreach(TEXT).with_index do |string, index|
        create(string) if string.include?(pattern)
    end
end

def create(name)
    file = File.open(RESULTS, "a")
    file.write(name)
end

loop do
    print "Введите возраст для поиска:"
    age = gets
    where(age)
    break if FileUtils.identical?(TEXT, RESULTS) || age.to_i == -1
    index()
end

#Пробовал различными способами, помещал в переменные, в массивы, сортировал итд. Но чет как-то не получилось(
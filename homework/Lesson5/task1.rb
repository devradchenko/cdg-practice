TEXT = "text.txt"

def index
    File.foreach(TEXT) { |line| puts line } 
end

def find(id)
    File.foreach(TEXT).with_index do |string, index|
        if index == id
            puts string
        end
    end
end

def where(pattern)
    ids = []
    File.foreach(TEXT).with_index do |string, index|
        ids.push(index) if string.include?(pattern)
    end
puts ids
end

def update(id, text)
    file = File.open("buff.txt", 'w')
    File.foreach(TEXT).with_index do |string, index|
        file.puts(id == index ? text : string)
    end

    file.close
    File.write(TEXT, File.read("buff.txt"))

    File.delete("buff.txt") if File.exist?("buff.txt")
end

def delete(id)
    file = File.open("buff.txt", 'w')
    File.foreach(TEXT).with_index do |string, index|
        file.puts(id == index ? nil : string)
    end

    file.close
    File.write(TEXT, File.read("buff.txt"))

    File.delete("buff.txt") if File.exist?("buff.txt")
end

def create(name)
    file = File.open(TEXT, "a")
    file.write("\n", name)
end
#write your code here

def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(word,number = 2)
    return (((word + " ") * (number-1)) + word)
end

def start_of_word(word,number)
    substring = ""
    number.times do |i|
        substring += word[i]
    end
    return substring
end

def first_word(word)
    return word.partition(" ").first
end

def titleize(word)
    title = []
    if word.match(" ") == nil
        return word.capitalize
    else
        title = word.split
        if title.length % 3 == 0

            index = title.length / 3

            index.times do |i|
                title[i] = title[i].capitalize
            end
            
            index.times do |i|
                title[-(i+1)] = title[-(i+1)].capitalize
            end

            return title.join(" ")
        else
            title[0] = title[0].capitalize
            title[-1] = title[-1].capitalize
            return title.join(" ")
        end
    end
end

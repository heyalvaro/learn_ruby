#write your code here
def translate(input_string)


    tokens = tokenize(input_string)
    index = tokens.length

    index.times do |i|
        tokens[i] = partial_translate(tokens[i])
    end

    return tokens.join(" ")
end

def tokenize(input_string)
    tokens = input_string.split(" ")
    return tokens
end


def partial_translate(input_string)

    vowels = ["a","e","i","o","u"]

#Check if first letter is a vowel
    if vowels.include? input_string[0]
        return input_string + "ay"
    else
#Check if second letter is a vowel
        if vowels.include? input_string[1] and input_string[0] != "q"
            return input_string[1..-1] + input_string[0] + "ay"
        else
#Check if third letter is a vowel
            if vowels.include? input_string[2] and input_string[1] != "q"
                return input_string[2..-1] + input_string[0..1] + "ay"
            else
                return input_string[3..-1] + input_string[0..2] + "ay"
            end
        end
    end 
end

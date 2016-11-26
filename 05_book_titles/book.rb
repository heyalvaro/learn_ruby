class Book
    attr_accessor :title
    
    def title=(my_title)
        @title = book_capitalize(my_title)
    end

    def book_capitalize(my_title)
        forbidden_words = ["and","in","the","of","a","an"]
        array = my_title.split(' ')
        new_arr = []
        length = array.length
        
        new_arr.push(array[0].capitalize)
        
        (length-1).times do |i|
            if(forbidden_words.include? array[i+1])
                new_arr.push(array[i+1])
            else
                new_arr.push(array[i+1].capitalize)
            end
        end
        return new_arr.join(' ')        
    end
end

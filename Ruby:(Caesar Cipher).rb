
def caesar_cipher(string, shift)


    arrayAlphabeticDowncase = ('a'..'z').to_a 
    arrayAlphabeticUpcase = ('A'..'Z').to_a 
    string_array = string.split("")
    new_string_array = string_array.each_with_index{
        |value,index| 
        unless value == " " || value =~ /[[:punct:]]/
            if value == value.upcase
                index_in_alphabetic = arrayAlphabeticUpcase.find_index(value) 
                new_index = (index_in_alphabetic+shift)%26

                string_array[index] = arrayAlphabeticUpcase[new_index]     
            else
                index_in_alphabetic = arrayAlphabeticDowncase.find_index(value) 

                new_index = (index_in_alphabetic+shift)%26

                string_array[index] = arrayAlphabeticDowncase[new_index]     
            end

            
        end
    }
    
    new_string = new_string_array.join("")

    puts new_string
    
end

caesar_cipher("What a string!", 5)

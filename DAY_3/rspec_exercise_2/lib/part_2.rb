# def palindrome?(string)
#     return string.downcase == revWord(string.downcase)
# end

# def revWord(word)
#     if word.length == 1
#         return word
#     end

#     return word[-1] + revWord(word[0..-2])
# end

# def palindrome?(string)
#     return true if string.length <= 1
#     string[0] == string[-1] ? palindrome?(string[1...-1]) : false
# end

def palindrome?(string)
    string.each_char.with_index do |char, i|
      if string[i] != string[-i - 1]
        return false
      end
    end
  
    return true
end

def substrings(str)
    new_array = []
   
    str.each_char.with_index do |char, i|
        (i..str.length-1).each do |j|
            new_array << str[i..j]
        end
    end
    return new_array
end


def palindrome_substrings(str)
    substrings(str).select { |ele| ele.length > 1 && palindrome?(ele) }
end


def partition(arr, num)
    new_array = Array.new(2) {Array.new(0)}

    arr.each do |ele|
        if ele < num
            new_array[0] << ele
        else
            new_array[1] << ele
        end
    end

    return new_array
end

def merge(hash_1, hash_2)
    resHash = Hash.new(0)

    hash_1.each {|key, val| resHash[key] = val}
    hash_2.each {|key, val| resHash[key] = val}

    return resHash
end

def censor(sentence, arr)
    words = sentence.split(' ')

   words.map { |word| arr.include?(word.downcase) ? replace_vowel(word) : word }.join(' ')
        
end

def replace_vowel(word)
    vowels = 'aeiou'

    word.each_char.with_index do |char, i|
        if vowels.include?(char.downcase)
            word[i] = '*'
        end
    end
end

# def power_of_two?(num)
#     if num < 1 
#         return false
#     elsif num == 1 
#         return true
#     end

#     return power_of_two?(num / 2.0)
# end


def power_of_two?(n)
    i = 1
    while i <= n
        return true if i == n
        i *= 2
    end
    return false
end


def element_count(arr)
    resHash = Hash.new(0)

    arr.each do |ele|
        resHash[ele] += 1
    end
    return resHash
end

# should mutate the original string by replacing chars of the string 
# with their corresponding values in the hash, if the char is a 
# key of the hash

def char_replace!(str, hash)

    str.each_char.with_index do |char, i|
        if hash.keys.include?(char)
            str[i] = hash[char]
            
        end
    end
    return str
end


def product_inject(arr)

    arr.inject { |acc, num| acc * num}
end
def is_prime?(num)
    return false if num < 2

    (2...num).each do |i|
        if num % i == 0
            return false
        end
    end
    return true
end

def nth_prime(num)
    count = 0
    i = 2
    while true
        if is_prime?(i)
            count += 1
            if count == num
                return i
            end
        end
        i += 1
    end
end

# should return an array of all prime numbers between min and max

def prime_range(num1, num2)
    newArr = []

    (num1..num2).each { |i| newArr << i if is_prime?(i) }
    return newArr
end
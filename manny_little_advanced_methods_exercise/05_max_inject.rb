# Write a method, max_inject(arr), that accepts any amount of numbers arguments and returns
# the largest number. Solve this using the built-in inject.

def max_inject(*arr)
    arr.inject do |res, ele|
        if ele > res
            ele
        else
            res 
        end
    end
end

p max_inject(1, -4, 0, 7, 5)  # => 7
p max_inject(30, 28, 18)      # => 30


# Building upon the code above, if we want our method to have the ability to accept 
# at least two arguments with potentially more, we can add a splat parameter. 
# The additional arguments will be gathered into an array for us to use as we see fit:
# # Less preferred
# def get_avg(num_1, num_2)
#     return (num_1 + num_2) / 2
# end

# # Preferred by a Rubyist
# def get_avg(num_1, num_2)
#     (num_1 + num_2) / 2
# end

# def say_hi
#     puts "hi"
# end

# # Less preferred 
# say_hi()

# # Preferred by a Rubyist
# say_hi

# raining = true

# # Less preferred
# if raining
#     puts "don't forget an umbrella!"
# end

# # Preferred by a Rubyist
# puts "don't forget an umbrella!" if raining

# num = 6

# # Less preferred
# p num % 2 == 0

# # Preferred by a Rubyist
# p num.even?

# people = ["Joey", "Bex", "Andrew"]

# # Less preferred
# p people[people.length - 1]

# # Preferred by a Rubyist
# p people[-1]
# p people.last

# # Less preferred
# def repeat_hi(num)
#     i = 0
#     while i < num
#         puts "hi"
#         i += 1
#     end
# end

# # Preferred by a Rubyist
# def repeat_hi(num)
#     num.times { puts "hi" }
# end

# # Less preferred
# def all_numbers_even?(nums)
#     nums.each do |num|
#         return false if num % 2 != 0
#     end

#     true
# end

# # Preferred by a Rubyist
# def all_numbers_even?(nums)
#     nums.all? { |num| num.even? }
# end

# # .all? Return true when all elements result in true when passed into the block.

# p [2, 4, 6].all? { |el| el.even? }  # => true
# p [2, 3, 6].all? { |el| el.even? }  # => false
# puts
# p [28, 82, 16, 12, 2].all? { |nums| nums.even? }
# puts

# # .any? Return true when all at least one element results in true when passed into the block.

# p [3, 4, 7].any? { |el| el.even? }  # => true
# p [3, 5, 7].any? { |el| el.even? }  # => false
# puts
# p [28, 82, 16, 12, 2].any? { |nums| nums.even? }
# puts
# # .none? Return true when no elements result in true when passed into the block.

# p [1, 3, 5].none? { |el| el.even? } # => true
# p [1, 4, 5].none? { |el| el.even? } # => false
# puts
# p [28, 82, 16, 12, 2].none? { |nums| nums.odd? }
# puts
# # .one? Return true when exactly one element results in true when passed into the block.

# p [1, 4, 5].one? { |el| el.even? }  # => true
# p [1, 4, 6].one? { |el| el.even? }  # => false
# p [1, 3, 5].one? { |el| el.even? }  # => false
# puts
# p [28, 82, 16, 12, 2].one? { |nums| nums.even? }
# puts

# # .count Return a number representing the count of elements that result in true when passed into the block.

# p [1, 2, 3, 4, 5, 6].count { |el| el.even? }    # => 3
# p [1, 3, 5].count { |el| el.even? }             # => 0
# puts
# p [28, 82, 16, 12, 2].count { |nums| nums.even? }
# puts

# # .sum Return the total sum of all elements

# p [1, -3, 5].sum   # => 3
# puts
# p [28, 82, 16, 12, 2].sum 
# puts

# # max and min Return the maximum or minimum element

# p [1, -3, 5].min    # => -3
# p [1, -3, 5].max    # => 5
# p [].max            # => nil

# # flatten Return the 1 dimensional version of any multidimensional array

# multi_d = [
#     [["a", "b"], "c"],
#     [["d"], ["e"]],
#     "f"
# ]

# p multi_d.flatten   # => ["a", "b", "c", "d", "e", "f"]

# # all?
# # any?
# # one?
# # none?
# # flatten?
# # count?


# arr = [[3,6,9,12,15], [6], [13,27], [88]]

# p arr.flatten.sum.even?

# # Where a string is wrapped in quotes, a symbol just has a leading colon.

# str = "hello"   # the string 
# sym = :hello    # the symbol

# p str.length    # => 5
# p sym.length    # => 5

# p str[1]        # => "e"
# p sym[1]        # => "e"

# p str == sym    # => false
# # a string is different from a symbol!

# # Symbols are Immutable

# str = "hello"
# sym = :hello

# str[0] = "x"
# sym[0] = "x"

# p str   # => "xello"
# p sym   # => :hello

# "hello".object_id   # => 70233443667980
# "hello".object_id   # => 70233443606440
# "hello".object_id   # => 70233443438700

# :hello.object_id    # => 2899228
# :hello.object_id    # => 2899228
# :hello.object_id    # => 2899228

# my_bootcamp = { :name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"] }
# p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
# p my_bootcamp[:color]   #=> "red

# my_bootcamp = { name:"App Academy", color:"red", locations:["NY", "SF", "ONLINE"] }
# p my_bootcamp           # => {:name=>"App Academy", :color=>"red", :locations=>["NY", "SF", "ONLINE"]}
# p my_bootcamp[:color]   #=> "red

# Let's make num an optional parameter.
# By default, num will have the value of 1
# def repeat(message, num=1)
#     message * num
# end

# p repeat("hi") # => "hi"
# p repeat("hi", 3) # => "hihihi"

# def greet(person_1, person_2=nil)
#     if person_2.nil?
#         p "Hey " + person_1
#     else
#         p "Hey " + person_1 + " and " + person_2
#     end
# end

# greet("Chao") # => "Hey Chao"
# greet("Chao", "Arittro") # => "Hey Chao and Arittro"

# def greet(person_1="default", person_2)
#     p person_1 + " and " + person_2
# end

# greet("Chao") # => "default and Chao"

# def method(hash)
#     p hash  # {"location"=>"SF", "color"=>"red", "size"=>100}
# end

# method({"location"=>"SF", "color"=>"red", "size"=>100})

# # this also works:
# method("location"=>"SF", "color"=>"red", "size"=>100)

# def modify_string(str, options)
#     str.upcase! if options["upper"]
#     p str * options["repeats"]
# end

# # less readable
# modify_string("bye", {"upper"=>true, "repeats"=>3}) # => "BYEBYEBYE"

# # more readable
# modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"

def modify_string(str, options={"upper"=>false, "repeats"=>1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

modify_string("bye")   # => "bye"
modify_string("bye", "upper"=>true, "repeats"=>3)   # => "BYEBYEBYE"
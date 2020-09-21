############### Hello World ##################

# 1
puts "Hello World"

# 2
adjective = "Big Bad"
puts "Hello #{adjective} World"

# 3 
str = "Hello World"

puts str.upcase

######### Nums Array and Enumerables ###############
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]
# 1
nums.uniq

# 2
nums.push(5000)
nums.pop
nums.shift
nums.unshift

# 3
nums.include?8

# 4 
nums.find_all{|i| i> 10}

# 5
nums.all?{|i| i> 10}

# 6
nums.any?{|i| 8/1===0}

# 7 
nums.count{|i| i>4}

# 8
nums.each_with_index{|i, index| puts i*index}

# 9
puts nums.find{|i| i % 7 === 0 && i % 5 === 0 && i>0}

# 10
nums.find_index{|index| index % 5 === 0 && index % 7 === 0 && index > 0}

# 11
nums.first(3)

# 12
nums.last(5)

# 13
nums.group_by{|i| i % 3}

# 14
nums.minmax

# 15
nums.reject{|i| i % 3 === 0}

# 16
nums.select{|i| i % 5 === 0}

############ Color Array ###############
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
# 1
puts colors.sample

# 2
puts colors.reverse

# 3
puts colors.map(&:upcase)

############### Methods ##############
# 1
def find_area height, width
    height*width
end

find_area(2,2)

# 2
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]
def multiply_each_by_five arr
    arr.each{|i| puts i * 5}
end

multiply_each_by_five(nums)

############### Methods With a Hash ##############

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

def print

# 1 
def print_price hash 
    puts hash[:price] 
end

print_price(table)

# 2

def print_item_sums hash1, hash2
    puts hash1[:price] + hash2[:price]
end

print_item_sums(table,lamp)

########## Solving Problems with Ruby #############

multiples = 0 
(0...1000).each{|i|
    if i % 3 == 0 or i % 5 == 0 
        multiples = multiples + i
    end    
}
puts multiples

######### Primes #############

# 1
def check_prime? pri
    puts pri.prime?    
end    

check_prime?(2)
check_prime?(4)

# 2
def get_primes max
    num = (0..max)
    puts num.select{|i| i.prime? == true}
end

get_primes 100 
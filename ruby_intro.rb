# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    total = 0;
  else
    total = arr.inject(&:+)
  end

  return total
end

def max_2_sum arr
  # YOUR CODE HERE
 
  max = arr[0]
  secondMax = arr[1]

  #does the array have 0 elements
  if arr.length == 0
    total = 0
  elsif arr.length == 1
    total = arr[0]
  else
    arr2 = arr.sort
    total = arr2[-1] + arr2[-2]
  end # length check end

  return total
end # function end

def sum_to_n? arr, n
  # YOUR CODE HERE

  #determine the length
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    for i in arr
      for j in arr
        if i + j = n
          return true
        end
      end
    end
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /\A[a-zA-Z]/
    if s =~ /\A[^aeiouAEIOU]/
      return true
    elsif s =~ /\A[aeiouAEIOU]/
      return false
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE

  return true if s == "0"
  /^[10]*00$/.match(s) != nil

end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError, 
      "Not valid arguments" if isbn.empty? or price <= 0
      @isbn = isbn
      @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end

end

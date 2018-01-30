# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  
  for i in arr
    total += i
  end
  
  return total
end

def max_2_sum arr
  if arr.size <= 1
    if arr.size < 1
      return 0
    else
      return arr[0]
    end
  end
  
  largest = arr[0]
  secondLargest = arr[1]
  
  for i in arr[1...arr.size]
    if i >= largest
      secondLargest = largest
      largest = i
    end
  end
  
  return (largest + secondLargest)
end

def sum_to_n? arr, n
  if arr.size <= 1
    return false
  end
  
  for i in 0 ... arr.size - 1
    for j in i + 1 ... arr.size
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.upcase =~ /^[B-DF-HJ-NP-TV-Z]/
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  if s =~ /^[10]*1[0]{2}$/ || s == "0"
    return true
  end
  
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :bookISBN, :price
  
  def initialize(bookISBN, price)
    if bookISBN.length < 1 || price <= 0
      raise ArgumentError, "Wrong constructors"
    end
    
    @bookISBN = bookISBN
    @price = price
  end
  
  def price_as_string
    return ("$%.2f" % price)
  end
end

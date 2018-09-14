# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total = 0
  arr.each {|a| total += a}
  total
end

def max_2_sum(arr)
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else
    arr1 = arr.sort
    arr1[-2] + arr1[-1]
  end
end

def sum_to_n? arr, n
  if arr.length >= 2
    for i in 0..arr.length-1
      for j in i+1..arr.length-1
        if arr[i] + arr[j] == n
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s[0] =~ /[a-z]/i && s[0] =~ /[^aeiou]/i
end

def binary_multiple_of_4? s
  return false if s.empty? || s =~ /[^01]/
  s == "0" || s[-2, 2] == "00"
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new("Illegal argument") if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  attr_reader :isbn, :price
  attr_writer :isbn, :price
  def price_as_string
    "$%.2f" % [price]
  end
end

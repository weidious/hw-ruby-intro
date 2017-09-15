# When done, submit this entire file to the autograder.

# Part 1

require 'set'

def sum arr
  arr.inject(0, :+)
end


def max_2_sum arr
  if
  arr.size()==0
    return 0
  else
    arr.max(2).reduce(:+)
  end
end


def sum_to_n? arr, n
  map = Set.new
  arr.each do |item|
    if map.include?(n-item)
      return true
    else
      map.add(item)

    end
  end
  return false
end


# Part 2

def hello(name)
  "Hello, "+ name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  is = s.to_i
  if s == "0"
    return true
  elsif /[a-zA-Z^$2-9*]/.match(s)
    return false
  else
    if /^[10]*00$/.match(s) && is % 2 == 0
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$"+"%.2f",@price)
  end
end

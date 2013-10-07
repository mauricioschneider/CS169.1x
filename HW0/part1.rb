# Define a method sum which takes an array of integers as an argument and returns the sum of its elements.
# For an empty array it should return zero.

def sum elements
  elements.reduce 0, :+
end

# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements.
# For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum elements
  sum(elements.sort.last(2))
end

# Define a method sum_to_n? which takes an array of integers and an additional integer, n,
# as arguments and returns true if any two elements in the array of integers sum to n.
# An empty array should sum to zero by definition.

def sum_to_n? elements, total
  if elements.empty?
    return true if total == 0
  else
    elements.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
    end
  end

  return false
end
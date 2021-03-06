# Your Code Here
def map(source_array)
  new = []
  x = 0

  while x < source_array.length do
    new.push(yield(source_array[x]))
    x += 1
  end
  # source_array.map { |source_array| source_array * -1}
  new
end


def reduce(source_array, starting_value = nil)

  if starting_value
    sum = starting_value
    x = 0
  else
    sum = source_array[0]
    x = 1
  end

  while x < source_array.length do
    sum = yield(sum, source_array[x])
    x += 1
  end

  sum

end

# reduce([1,2,3], 100)

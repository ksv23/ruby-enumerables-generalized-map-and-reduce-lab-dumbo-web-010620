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
  source_array.reduce {|memo, n| memo + n}
end

reduce(source_array, 1)

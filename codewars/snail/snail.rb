require 'pry'

def snail(array)
  rotate(array, []).flatten
end

def rotate(collection, result)
  new_array = []

  return result if collection.empty?
  
  result << collection.shift

  collection.each do |elems|
    elems.reverse.each.with_index do |el, index|
      new_array[index] ||= []
      new_array[index] << el
    end
  end

  rotate(new_array, result)
end

p snail([[1,2,3], [4,5,6], [7,8,9]])

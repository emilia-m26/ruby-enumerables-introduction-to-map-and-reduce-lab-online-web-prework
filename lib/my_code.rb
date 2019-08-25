def my_map(source_array)
  counter = 0
  map_array = []
  while counter < source_array.length do 
    map_array << yield(source_array[counter]) 
   counter += 1 
  end 
  map_array
end

def map_to_negativize(source_array)
  my_map(source_array) {|n| n*-1}
end

def map_to_no_change(source_array)
  source_array
end



# my_map([1,2,3]) do |num|
#   num * 2
# end 

def map_to_double(source_array)
 # source_array.map {|n| n*2}
  my_map(source_array){|n| n*2}
end

def map_to_square(source_array)
  source_array.map {|n| n**2}
end

def reduce_to_total(source_array, starting_point = 0)
#    source_array.reduce(starting_point) { |sum, num| sum + num}
    
    sum = 0 + starting_point
    source_array.each do |number|
      sum += number
    end
     sum 
end

def reduce_to_all_true(source_array)
  source_array.all?
end

def reduce_to_any_true(source_array)
  source_array.any?
end





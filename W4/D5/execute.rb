#phase 1
#time complexity is O(n^2)
def my_min_1(list)

    (0...list.length).each do |i|
      return list[i] if list.all? {|ele| ele >= list[i]} 
    end

end

#phase 2
#time complexity is O(n)
def my_min_2(list)
  min_ele = list.first
  (1...list.length).each do |i|
    ele = list[i]
    min_ele = ele if ele < min_ele
  end
  min_ele
end


#phase 1
#time complexity is O(n^2)
def largest_contigious_subsum_1(array)
    sub_arrays = []

      (0...array.length).each do |i|
        (i...array.length).each do |j|
          sub_arrays << array[i..j]
        end
      end
    
    sub_max = sub_arrays.first.sum

    sub_arrays.each do |sub_array|
      sub_max = sub_array.sum if sub_array.sum > sub_max
    end

    sub_max
end


#phase two
#time complexity is 0(n)

def largest_contigious_subsum_2(array)
  max_sum = array.first
  current_sum = array.first

  (1...array.length).each do |i|
    current_sum = 0 if current_sum < 0

    current_sum += array[i]
    max_sum = [current_sum,max_sum].max
  end
  max_sum 
end



# list = [2, 3, -6, 7, -6, 7]
array = [2, 3, -6, 7, -6, 7]
array_2 = [-5,-4,-1,-2]
p largest_contigious_subsum_2(array)

p largest_contigious_subsum_1(array)

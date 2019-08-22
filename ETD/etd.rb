

def my_min(arr)     #n^2 nested loop
  smallest = 0
  arr.each_with_index do |el1, idx1|
    if arr[idx1+1..-1].all?{ |element| element > el1} && arr[0...idx1].all? { |ele| ele > el1 }
      smallest = el1
    end
  end
  smallest
end

def my_min(arr)  # n
  smallest = arr[0]
  arr.each do |ele|
    if ele < smallest
      smallest = ele
    end
  end
  smallest
end

# array of subarrays / 2d array
# nested loops 
def largest_con(arr)               #polynomial (n^3)
  final = [] 
  (0...arr.length).each do |start|
    (start...arr.length).each do |fin|
      final << arr[start..fin]
    end
  end
  sums = final.map {|el| el.sum}
  sums.max
end



# only going through loop once
# grab current total and greatest total
# 
def largest_con(arr)             #O(n)
  return arr.max if arr.all?{|el| el <= 0}
  largest = 0
  i = 0
  current = 0
  while i < arr.length
    current += arr[i]
    largest = current if current > largest
    current = 0 if current < 1
    i += 1
  end
    largest
end

  list = [2, 3, -6, 7, -6, 7, -10]
  p largest_con(list) # => 8 (from [7, -6, 7])


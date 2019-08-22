# array with possible anagrams 
# check 
# def anagram?(str1, str2)
  # possibilities = []

  # arr = str1.split("")
  # arr.each_with_index do |char, idx|
  #   superarr = perm(arr[0...idx] + arr[idx+1..-1]).map { |subarr| [arr[idx]] + subarr }
  #   # possibilities << [arr[idx]]
  #   possibilities += superarr
  # end
  
  # # possibilities.select { || }
  
  # possibilities.select!{|sub| sub.length == arr.length }.map!{|sub1| sub1.join("")}
# end



# def perm(arr)
#   return [arr] if arr.empty?

#   last = arr[-1]
#   reduced = perm(arr[0...-1])

#   new_arr = []
#   reduced.each do |ele|
#     new_arr << ele
#     new_arr << (ele + [last])
#   end

#   new_arr
# end
def anagram?(str1, str2)   # O(n!)
  arr =str1.split("")
  poss = arr.permutation(arr.length).to_a
  poss.map! {|sub| sub.join("")}
  poss.include?(str2)
end

def anagram?(str1, str2)                          # O(n2)
  str1.each_char do |char|                        # n
    if str2.include?(char)                        # n ?? + x
                                                  # n + y + yx
    idx = str2.index(char)                        # x
    str2 = str2[0...idx] + str2[idx + 1..-1]      # x + x
    end
  end
  str2.empty?                                     # x
end

def anagram?(str1, str2)              #O(nlogn)
  str1.split("").sort == str2.split("").sort
end

def anagram?(str1, str2)              # O(n) - Linear
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char { |ele| hash1[ele] += 1 }
  str2.each_char { |ele| hash2[ele] += 1}

  hash1 == hash2
end


p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true



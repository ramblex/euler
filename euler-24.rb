# 
# A permutation is an ordered arrangement of objects. For example, 3124 is one
# possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are
# listed numerically or alphabetically, we call it lexicographic order. The
# lexicographic permutations of 0, 1 and 2 are:
# 012   021   102   120   201   210
# What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5,
# 6, 7, 8 and 9?
# 
digits = [0,1,2,3,4,5,6,7,8,9]

def getPermutations(arr)
  if arr.length == 1
    return arr
  end

  currentPermutations = []
  arr.each do |digit|
    others = arr.clone
    others.delete(digit)
    getPermutations(others).each do |permutation|
      currentPermutations << (digit.to_s + permutation.to_s)
    end
  end

  currentPermutations
end

p getPermutations(digits)[999999]

# 0 1
# 1 0

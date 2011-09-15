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

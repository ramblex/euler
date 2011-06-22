str = ""
num = 0
until str.length > 1000000
  str << num.to_s
  num += 1
end
p str.length

arr = str.split(//)

p (0..6).inject(1) {|result, pow| result * arr[10 ** pow].to_i}

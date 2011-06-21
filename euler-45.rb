n = 286
p = 164
h = 142

while true
  tn = n * (n + 1) / 2
  p n if n % 1000 == 0

  (p..n).each do |i|
    pn = i * ((3*i) - 1) / 2
    if pn > tn
      p = i
      break
    end
    if pn == tn
      puts "pn == tn"
      (h..i).each do |j|
        hn = j * ((2*j) - 1)
        if pn > tn
          h = i
          break
        end
        if hn == pn
          puts "Answer: #{tn}"
          exit
        end
      end
    end
  end
  n += 1
end

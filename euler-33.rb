fractions = []
results = []

(11..99).to_a.each do |denominator|
  (10..(denominator - 1)).to_a.each do |numerator|
    next if denominator % 10 == 0 and numerator % 10 == 0
    num_str = numerator.to_s.split(//)
    denom_str = denominator.to_s.split(//)

    actual = numerator.to_f / denominator

    num_str.each do |x|
      if denom_str.include? x
        num_str.delete(x)
        denom_str.delete(x)
      end
    end

    if num_str.length == 1 and denom_str.length == 1
      mistake = num_str[0].to_f / denom_str[0].to_f
      if mistake == actual and !results.include? actual
        puts "#{numerator} #{denominator} -> #{num_str} #{denom_str}"
        fractions << [num_str[0], denom_str[0]]
        results << actual
      end
    end
  end
end

numerator = fractions.uniq.map { |x| x[0].to_i }.inject(:*)
denom = fractions.uniq.map { |x| x[1].to_i }.inject(:*)

p "#{numerator} / #{denom}"

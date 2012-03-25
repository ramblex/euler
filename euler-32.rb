numbers = (1..9).to_a.map { |x| x.to_s }

products = []

numbers.permutation(9) do |x|
  (1..7).to_a.each do |first_part|
    (1..(8 - first_part)).to_a.each do |second_part|
      a = x[0..first_part].inject(:+).to_i
      b = x[(first_part + 1)..second_part].inject(:+).to_i

      result = a * b

      if result == x[(second_part + 1)..-1].inject(:+).to_i
        products << result unless products.include? result
      end
    end
  end
end

p products
p products.inject(:+)

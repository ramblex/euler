p (2**1000).to_s.split(//).inject(0) { |sum, el| sum + el.to_i }

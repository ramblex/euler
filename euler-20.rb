p (1..100).inject(:*).to_s.split(//).inject(0) {|sum, el| sum + (el.to_i)}

range = (100..999).to_a.reverse
answers = []

range.each do |a|
  (100..a).to_a.reverse.each do |b|
    c = (a * b).to_s.split(//)
    answers << (a * b) if c == c.reverse
  end
end

p answers.max

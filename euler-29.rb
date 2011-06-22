terms = []
(2..100).each do |a|
  (2..100).each do |b|
    term = a ** b
    terms << term unless terms.include? term
  end
end

p terms.length

w = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
}

ten_words = {
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

length = 0

(1..999).each do |number|
  hundreds = number / 100
  h = "#{w[hundreds]} hundred" if hundreds > 0

  tens = number % 100
  if tens > 20
    t = "#{ten_words[tens - (tens % 10)]}"
  elsif tens > 9 # 10 - 19
    t = "#{ten_words[tens]}"
  end

  units = tens % 10
  u = w[units] if units > 0 and (tens > 20 or tens < 10)

  and_word = "and" if h && (t || u)

  length += "#{h} #{and_word} #{t} #{u}".gsub(' ', '').length
end
length += "one thousand".gsub(' ', '').length
p length

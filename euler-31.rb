# 
# 
# In England the currency is made up of pound, £, and pence, p, and there are
# eight coins in general circulation:
# 1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
# It is possible to make £2 in the following way:
# 1£1 + 150p + 220p + 15p + 12p + 31p
# How many different ways can £2 be made using any number of coins?
# 
@coins = [1, 2, 5, 10, 20, 50, 100, 200]

@num_solutions = 0

def find_solutions(remaining, partial)
  if remaining == 0
    @num_solutions += 1
    return
  end

  solutions = []
  @coins.each do |coin|
    if coin <= remaining and (partial.empty? or partial.last <= coin)
      solutions << find_solutions(remaining - coin, partial + [coin])
    end
  end
  solutions
end

find_solutions(200, [])
p @num_solutions

prices = [3.99, 25.00, 8.99]

def total(prices)
  sum = 0
  prices.each do |p|
    sum += p
    # puts hi
  end
  sum
end

def refund(prices)
  sum = 0
  prices.each { |p| sum -= p }
  sum
end

def show_discounts(prices)
  prices.each { |p| puts format('Your discount: $%.2f', p * 1 / 3) }
end
puts format('%.2f', total(prices))
puts format('%.2f', refund(prices))
show_discounts(prices)

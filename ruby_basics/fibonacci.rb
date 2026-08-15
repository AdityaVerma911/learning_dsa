# Write a Ruby method that returns the Nth Fibonacci number.
def fibonacci_series(n)
  return -1 if n < 0
  a = 0
  b = 1
  (0..n).each do |i|
    if i == 0
      puts i
    elsif i == 1
      puts i
    else
      next_number = a + b
      puts next_number
      a = b
      b = next_number
    end
  end
end

p fibonacci_series(10)
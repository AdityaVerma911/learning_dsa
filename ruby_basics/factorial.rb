
def factorial(n)
  return 1 if n == 1 || n == 0
  factorial(n - 1) * n
end

p factorial(5)
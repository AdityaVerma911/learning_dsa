def is_palindrome?(n)
  rev = 0
  temp = n
  while temp != 0
    digit = temp % 10
    rev = rev * 10 + digit
    temp = temp / 10
  end
  rev == n
end

p is_palindrome?(1001)
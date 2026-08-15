# Write a Ruby method that takes three integers and returns the largest number.

def max_of_three(a,b,c)
  if a >= b && a >= c
    puts a
  elsif b >= a && b >= c
    puts b
  else
    puts c
  end
end

max_of_three(40,30,40)
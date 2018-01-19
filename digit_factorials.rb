# int -> array
def digits(n)
  n.to_s.chars.map(&:to_i)
end

# int -> int
def digit_factorial(n)
  sum = 0
  digits(n).each {|d| sum += Math.gamma(d + 1) }
  sum
end

start = Time.now
sum = 0
10.upto(50000) do |n|
  sum += n if digit_factorial(n) == n
end
finish = Time.now
puts sum
puts "Completed in #{finish - start}"
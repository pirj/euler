require 'prime'

sum=0
primes = Prime.take_while { |prime| (sum = sum + prime) < 10**6 }

answer = (2...primes.size).reverse_each.lazy.map do |size|
  primes.each_cons(size).lazy.map do |sequence|
    sum = sequence.inject :+
    sum < 10**6 && Prime.prime?(sum) && sum
  end.find &:itself
end.find &:itself

puts answer

puts 99.
  times.
  lazy.
  with_object([0, 1]).
  # map { |_, fib| fib[0], fib[1] = fib[1], fib[0] + fib[1]; fib[0] }.
  map { |_, fib| fib[1] = fib[0] + fib[0] = fib[1]; fib[0] }.
  take_while(&:>.to_proc.curry(2)[4*10**6]). # take_while { |value| value < 4*10**6 }.
  select(&:even?).
  inject(:+)

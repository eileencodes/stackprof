require "stackprof"

# calculate Fibonacci(20)
# for benchmark
def fib(n)
  if n<2
    n
  else
    fib(n-2)+fib(n-1)
  end
end


StackProf.run(mode: :wall, out: "foo.dump", raw: true) do
  fib(35)
end

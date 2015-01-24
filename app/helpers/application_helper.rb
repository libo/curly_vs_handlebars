require 'fibonacci'

module ApplicationHelper
  def fibonacci(args={n: 10})
    Fibonacci.compute(args[:n])
  end
end

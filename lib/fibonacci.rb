class Fibonacci
  def self.compute(n)
    n = n.to_i
    n <= 1 ? n : compute(n - 1) + compute(n - 2)
  end
end

class Curly::IndexPresenter < Curly::Presenter
  def fibonacci(n: '10')
    Fibonacci.compute(n)
  end
end

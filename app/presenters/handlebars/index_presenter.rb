require 'fibonacci'

class Handlebars::IndexPresenter
  def initialize(context)
    @context = context
  end

  def fibonacci(args={n: 10})
    Fibonacci.compute(args[:n])
  end

  def user
    UserPresenter.new(@context.current_user)
  end
end

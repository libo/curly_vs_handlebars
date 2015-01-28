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

  def method_missing(method, *args, &block)
    @context.public_send(method, *args, &block)
  end

  def respond_to_missing?(method, include_private = false)
    @context.respond_to?(method, false)
  end

end

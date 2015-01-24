class Curly::IndexPresenter < Curly::Presenter
  def fibonacci(n: '10')
    Fibonacci.compute(n)
  end

  def user(identifier)
    methods = identifier.split('.')
    user = User.new

    methods.inject(user) do |memo, m|
      memo.public_send(m.to_sym)
    end
  end
end

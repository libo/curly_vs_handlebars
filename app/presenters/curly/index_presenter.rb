class Curly::IndexPresenter < Curly::Presenter
  def fibonacci(n: '10')
    Fibonacci.compute(n)
  end

  def user(identifier)
    methods = identifier.split('.')
    user = UserPresenter.new(current_user)

    # Yes this is quite ugly but we can change it in Curly.
    methods.inject(user) do |memo, m|
      memo.public_send(m.to_sym)
    end

    # Please note the above is {{ user.identity.name }}
    # NOT {{ @user.identity.name }}, it's not a context no '@'
  end
end

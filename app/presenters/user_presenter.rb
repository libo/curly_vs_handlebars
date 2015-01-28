class UserPresenter
  def initialize(user)
    @user = user
  end

  def identity
    IdentityPresenter.new(@user.identity)
  end
end

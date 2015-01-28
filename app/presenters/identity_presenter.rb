class IdentityPresenter
  def initialize(identity)
    @identity = identity
  end

  def name
    "Mr. #{@identity.name}"
  end
end

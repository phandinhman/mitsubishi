class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    can :read, :all
    if user.is_admin?
      can :manage , :all
    end
  end
end

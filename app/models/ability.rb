class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    can :manage, :all



    if user.email.to_s == "ecopat@gmail.com"
      can :manage, :all
    else

    end
  end
end

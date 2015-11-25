class Ability
  include CanCan::Ability

  # you should have some code here to handle if the user is not logged in
  # currently I get an crashing error if I try to do anything while signed
  # out, because user is nil, and below you call user.id
  def initialize(user)

    can :read, Work

    if user
      can :create, Work
    end

    can [:update, :destroy], Work do |work|
      user.id == work.user_id
    end
  end
end

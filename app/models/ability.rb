class Ability
  include CanCan::Ability

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

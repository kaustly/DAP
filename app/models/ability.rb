class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Work, :message => "access denied"

    if user
      can :create, Work, :message => "access denied"
      can [:update, :destroy], Work do |work|
        user.id == work.user_id
      end
    end

  end
end

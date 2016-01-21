class Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :add_dig, :remove_dig], Work


    if user
      can :create, Work
      can [:update, :destroy], Work do |work|
        user.id == work.user_id
      end
    end

  end
end

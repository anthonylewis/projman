class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :user
      can :read, User, :id => user.id
      can :create, Project
      can :manage, Project, :user_id => user.id
      can :manage, Project, :private => false
    end
  end
end

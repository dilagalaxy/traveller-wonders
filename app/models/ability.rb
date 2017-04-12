class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user (not logged in)
    
    can :create, Comment
      can :read, Comment
      can :read, Product
 
      if user.admin?
        can :destroy, Comment
        can :manage, Product
        can :destroy, User      
      end
    
  end
end
class Ability < ActiveRecord::Base
	include CanCan::Ability
	def initialize(user)
    user ||= User.new

    if user.role == "Manager"
    	can :manage, :all
    else 
        can [:manage], [Activity]
	end
  end
end

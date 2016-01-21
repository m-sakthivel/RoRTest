class Ability < ActiveRecord::Base
	include CanCan::Ability
	def initialize(user)
    user ||= User.new

    #if current_user.role == "Manager"
    #	can :manage, :all
    #else 
     #   can [:manage], [Activiy]
	#end
  end
end
